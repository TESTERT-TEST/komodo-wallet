import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:web_dex/mm2/mm2.dart';
import 'package:web_dex/mm2/mm2_api/mm2_api.dart';
import 'package:web_dex/mm2/rpc.dart';
import 'package:web_dex/mm2/rpc_native.dart';
import 'package:web_dex/shared/utils/utils.dart';

class MM2Windows extends MM2 {
  final RPC _rpc = RPCNative();
  Process? _mm2Process;

  @override
  Future<void> start(String? passphrase) async {
    await _killMM2Process();

    final String mainPath = _mainPath;
    final Map<String, dynamic> params = await MM2.generateStartParams(
      gui: 'web_dex windows',
      passphrase: passphrase,
      userHome: mainPath,
      dbDir: '$mainPath/DB',
    );

    final mm2Config = await _createMM2ConfigFile(mainPath, params);

    if (mm2Config == null) {
      return;
    }

    _mm2Process = await Process.start(
      _exePath,
      [],
      environment: {
        'MM_CONF_PATH': mm2Config.path,
      },
    );

    _mm2Process?.stdout.transform(utf8.decoder).listen((data) async {
      log(
        data,
        path: 'mm2 log',
        isError: false,
      );
    });
    _mm2Process?.stderr.transform(utf8.decoder).listen((event) async {
      log(
        event,
        path: 'mm2 error log',
        isError: true,
      );
    });
    _mm2Process?.exitCode.then((exitCode) async {
      log('mm2 exit code: $exitCode');
    });

    await waitMM2StatusChange(MM2Status.rpcIsUp, mm2, waitingTime: 60000);
    mm2Config.deleteSync(recursive: true);
  }

  @override
  Future<MM2Status> status() async {
    try {
      final status = await version();
      return status.isNotEmpty ? MM2Status.rpcIsUp : MM2Status.isNotRunningYet;
    } catch (_) {
      return MM2Status.isNotRunningYet;
    }
  }

  @override
  Future<void> stop() async {
    await mm2Api.stop();
    await _killMM2Process();
  }

  Future<File?> _createMM2ConfigFile(
      String dir, Map<String, dynamic> params) async {
    try {
      final File mm2Config = File('$dir/MM2.json')..createSync(recursive: true);
      await mm2Config.writeAsString(jsonEncode(params));
      return mm2Config;
    } catch (e) {
      log('mm2 windows error mm2 config file not created: ${e.toString()}');
      return null;
    }
  }

  String get _mainPath => Platform.resolvedExecutable
      .substring(0, Platform.resolvedExecutable.lastIndexOf("\\"));

  String get _exePath =>
      path.join(path.dirname(Platform.resolvedExecutable), 'mm2.exe');

  Future<void> _killMM2Process() async {
    _mm2Process?.kill();
    await Process.run('taskkill', ['/F', '/IM', 'mm2.exe', '/T']);
  }

  @override
  Future<dynamic> call(dynamic reqStr) async {
    return await _rpc.call(MM2.prepareRequest(reqStr));
  }
}
