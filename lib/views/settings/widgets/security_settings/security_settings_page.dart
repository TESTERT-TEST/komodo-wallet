import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_dex/bloc/security_settings/security_settings_bloc.dart';
import 'package:web_dex/bloc/security_settings/security_settings_event.dart';
import 'package:web_dex/bloc/security_settings/security_settings_state.dart';
import 'package:web_dex/blocs/blocs.dart';
import 'package:web_dex/common/screen.dart';
import 'package:web_dex/model/settings_menu_value.dart';
import 'package:web_dex/model/wallet.dart';
import 'package:web_dex/views/common/page_header/page_header.dart';
import 'package:web_dex/views/common/pages/page_layout.dart';
import 'package:web_dex/views/common/wallet_password_dialog/wallet_password_dialog.dart';
import 'package:web_dex/views/settings/widgets/common/settings_content_wrapper.dart';
import 'package:web_dex/views/settings/widgets/security_settings/password_update_page.dart';
import 'package:web_dex/views/settings/widgets/security_settings/security_settings_main_page.dart';
import 'package:web_dex/views/settings/widgets/security_settings/seed_settings/seed_confirm_success.dart';
import 'package:web_dex/views/settings/widgets/security_settings/seed_settings/seed_show.dart';

import 'seed_settings/seed_confirmation/seed_confirmation.dart';

class SecuritySettingsPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SecuritySettingsPage({super.key, required this.onBackPressed});
  final VoidCallback onBackPressed;
  @override
  State<SecuritySettingsPage> createState() => _SecuritySettingsPageState();
}

class _SecuritySettingsPageState extends State<SecuritySettingsPage> {
  String _seed = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SecuritySettingsBloc>(
      create: (_) => SecuritySettingsBloc(SecuritySettingsState.initialState()),
      child: BlocBuilder<SecuritySettingsBloc, SecuritySettingsState>(
        builder: (BuildContext context, SecuritySettingsState state) {
          final Widget content = _buildContent(state.step);
          if (isMobile) {
            return _SecuritySettingsPageMobile(
              content: content,
              onBackButtonPressed: () {
                switch (state.step) {
                  case SecuritySettingsStep.securityMain:
                    widget.onBackPressed();
                    break;
                  case SecuritySettingsStep.seedConfirm:
                    context
                        .read<SecuritySettingsBloc>()
                        .add(const ShowSeedEvent());
                    break;
                  case SecuritySettingsStep.seedShow:
                  case SecuritySettingsStep.seedSuccess:
                  case SecuritySettingsStep.passwordUpdate:
                    context
                        .read<SecuritySettingsBloc>()
                        .add(const ResetEvent());
                    break;
                }
              },
            );
          }
          return content;
        },
      ),
    );
  }

  Widget _buildContent(SecuritySettingsStep step) {
    switch (step) {
      case SecuritySettingsStep.securityMain:
        _seed = '';
        return SecuritySettingsMainPage(onViewSeedPressed: onViewSeedPressed);

      case SecuritySettingsStep.seedShow:
        return SeedShow(seedPhrase: _seed);

      case SecuritySettingsStep.seedConfirm:
        return SeedConfirmation(seedPhrase: _seed);

      case SecuritySettingsStep.seedSuccess:
        _seed = '';
        return const SeedConfirmSuccess();

      case SecuritySettingsStep.passwordUpdate:
        _seed = '';
        return const PasswordUpdatePage();
    }
  }

  Future<void> onViewSeedPressed(BuildContext context) async {
    final SecuritySettingsBloc securitySettingsBloc =
        context.read<SecuritySettingsBloc>();

    final String? pass = await walletPasswordDialog(context);
    if (pass == null) return;
    final Wallet? wallet = currentWalletBloc.wallet;
    if (wallet == null) return;
    _seed = await wallet.getSeed(pass);
    if (_seed.isEmpty) return;

    securitySettingsBloc.add(const ShowSeedEvent());
  }
}

class _SecuritySettingsPageMobile extends StatelessWidget {
  const _SecuritySettingsPageMobile(
      {required this.onBackButtonPressed, required this.content});
  final VoidCallback onBackButtonPressed;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      header: PageHeader(
        title: SettingsMenuValue.security.title,
        backText: '',
        onBackButtonPressed: onBackButtonPressed,
      ),
      content: Flexible(
        child: SettingsContentWrapper(
          child: content,
        ),
      ),
    );
  }
}
