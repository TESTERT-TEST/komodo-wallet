import 'package:app_theme/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_dex/bloc/settings/settings_bloc.dart';
import 'package:web_dex/bloc/settings/settings_state.dart';
import 'package:web_dex/generated/codegen_loader.g.dart';
import 'package:web_dex/model/coin.dart';
import 'package:web_dex/model/nft.dart';
import 'package:web_dex/shared/widgets/nft/nft_badge.dart';
import 'package:web_dex/views/wallet/coin_details/receive/qr_code_address.dart';
import 'package:web_dex/views/wallet/coin_details/receive/receive_address.dart';

enum NftReceiveCardAlignment { top, bottom }

class NftReceiveCard extends StatelessWidget {
  final String? currentAddress;
  final double qrCodeSize;
  final void Function(String?) onAddressChanged;
  final Coin coin;
  final double maxWidth;

  const NftReceiveCard({
    Key? key,
    required this.currentAddress,
    required this.qrCodeSize,
    required this.onAddressChanged,
    required this.coin,
    this.maxWidth = 343,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<ColorSchemeExtension>()!;
    final textTheme = Theme.of(context).extension<TextThemeExtension>()!;
    final address = currentAddress;
    final chain = fromCoinToChain(coin);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.surfContLow,
      ),
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.network.tr(),
                style: textTheme.bodyS,
              ),
              if (chain != null) BlockchainBadge(blockchain: chain),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            LocaleKeys.scanToGetAddress.tr(),
            style: textTheme.bodyS,
          ),
          const SizedBox(height: 16),
          if (address != null)
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: qrCodeSize,
                  height: qrCodeSize,
                  decoration: BoxDecoration(
                    border: Border.all(color: colorScheme.surfContHighest),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: BlocSelector<SettingsBloc, SettingsState, ThemeMode>(
                    selector: (state) => state.themeMode,
                    builder: (context, state) {
                      final isDarkTheme = state == ThemeMode.dark;
                      final Color foregroundColor =
                          isDarkTheme ? Colors.white : Colors.black;
                      final Color backgroundColor =
                          isDarkTheme ? colorScheme.surfContLow : Colors.white;

                      return QRCodeAddress(
                        currentAddress: address,
                        borderRadius: BorderRadius.circular(0),
                        padding: EdgeInsets.zero,
                        backgroundColor: backgroundColor,
                        foregroundColor: foregroundColor,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  LocaleKeys.ercStandardDisclaimer.tr(),
                  style: textTheme.bodyXS.copyWith(color: colorScheme.orange),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ReceiveAddress(
                  coin: coin,
                  selectedAddress: address,
                  onChanged: onAddressChanged,
                  backgroundColor: colorScheme.surfContHighest,
                ),
              ],
            ),
        ],
      ),
    );
  }

  NftBlockchains? fromCoinToChain(Coin coin) {
    switch (coin.abbr) {
      case 'ETH':
        return NftBlockchains.eth;
      case 'BNB':
        return NftBlockchains.bsc;
      case 'AVAX':
        return NftBlockchains.avalanche;
      case 'MATIC':
        return NftBlockchains.polygon;
      case 'FTM':
        return NftBlockchains.fantom;
      default:
        return null;
    }
  }
}
