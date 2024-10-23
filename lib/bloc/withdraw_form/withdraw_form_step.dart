import 'package:easy_localization/easy_localization.dart';
import 'package:web_dex/generated/codegen_loader.g.dart';

enum WithdrawFormStep {
  failed,
  fill,
  confirm,
  success;

  String get title {
    switch (this) {
      case WithdrawFormStep.fill:
        return LocaleKeys.enterDataToSend.tr();
      case WithdrawFormStep.confirm:
        return LocaleKeys.confirmSending.tr();
      case WithdrawFormStep.success:
        return LocaleKeys.transactionComplete.tr();
      case WithdrawFormStep.failed:
        return LocaleKeys.transactionDenied.tr();
    }
  }
}
