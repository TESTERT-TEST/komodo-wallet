import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_dex/bloc/auth_bloc/auth_bloc.dart';
import 'package:web_dex/bloc/auth_bloc/auth_bloc_event.dart';
import 'package:web_dex/blocs/blocs.dart';
import 'package:web_dex/generated/codegen_loader.g.dart';
import 'package:web_dex/model/wallet.dart';
import 'package:komodo_ui_kit/komodo_ui_kit.dart';

class LogOutPopup extends StatelessWidget {
  const LogOutPopup({
    super.key,
    required this.onConfirm,
    required this.onCancel,
  });
  final VoidCallback onCancel;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(
            LocaleKeys.logoutPopupTitle.tr(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          if (currentWalletBloc.wallet?.config.type == WalletType.iguana)
            SelectableText(
              LocaleKeys.logoutPopupDescription.tr(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          const SizedBox(height: 25),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              UiUnderlineTextButton(
                key: const Key('popup-cancel-logout-button'),
                width: 120,
                height: 36,
                text: LocaleKeys.cancel.tr(),
                onPressed: onCancel,
              ),
              const SizedBox(width: 12),
              UiPrimaryButton(
                key: const Key('popup-confirm-logout-button'),
                width: 120,
                height: 36,
                text: LocaleKeys.logOut.tr(),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthLogOutEvent());
                  onConfirm();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
