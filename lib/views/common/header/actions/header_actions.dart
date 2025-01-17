import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:komodo_ui_kit/komodo_ui_kit.dart';
import 'package:web_dex/app_config/app_config.dart';
import 'package:web_dex/blocs/blocs.dart';
import 'package:web_dex/common/screen.dart';
import 'package:web_dex/generated/codegen_loader.g.dart';
import 'package:web_dex/model/coin.dart';
import 'package:web_dex/release_options.dart';
import 'package:web_dex/shared/utils/formatters.dart';
import 'package:web_dex/views/common/header/actions/account_switcher.dart';

const EdgeInsets headerActionsPadding = EdgeInsets.fromLTRB(38, 18, 0, 0);
final _languageCodes = localeList.map((e) => e.languageCode).toList();
final _langCode2flags = {
  for (var loc in _languageCodes)
    loc: SvgPicture.asset(
      '$assetsPath/flags/$loc.svg',
    ),
};
List<Widget>? getHeaderActions(BuildContext context) {
  return <Widget>[
    if (showLanguageSwitcher)
      Padding(
        padding: headerActionsPadding,
        child: LanguageSwitcher(
          currentLocale: context.locale.toString(),
          languageCodes: _languageCodes,
          flags: _langCode2flags,
        ),
      ),
    Padding(
      padding: headerActionsPadding,
      child: StreamBuilder<Iterable<Coin>>(
        initialData: coinsBloc.walletCoinsMap.values,
        stream: coinsBloc.outWalletCoins,
        builder: (context, snapshot) {
          return ActionTextButton(
            text: LocaleKeys.balance.tr(),
            secondaryText: '\$${formatAmt(_getTotalBalance(snapshot.data!))}',
            onTap: null,
          );
        },
      ),
    ),
    const Padding(
      padding: headerActionsPadding,
      child: AccountSwitcher(),
    ),
    if (!isWideScreen) const SizedBox(width: mainLayoutPadding),
  ];
}

double _getTotalBalance(Iterable<Coin> coins) {
  double total = coins.fold(0, (prev, coin) => prev + (coin.usdBalance ?? 0));

  if (total > 0.01) {
    return total;
  }

  return total != 0 ? 0.01 : 0;
}
