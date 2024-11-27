import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

const String mmRpcVersion = '2.0';
// issue https://github.com/flutter/flutter/issues/19462#issuecomment-478284020
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
const double maxScreenWidth = 1273;
const double mainLayoutPadding = 29;
const double appBarHeight = 70;
const String allWalletsStorageKey = 'all-wallets';
const String defaultDexCoin = 'KMD';
const List<Locale> localeList = [Locale('en')];
const String assetsPath = 'assets';

// Temporary feature flag to allow merging of the PR
// TODO: Remove this flag after the feature is finalized
const bool isBitrefillIntegrationEnabled = false;

const Duration kPerformanceLogInterval = Duration(minutes: 1);

// This information is here because it is not contextual and is branded.
// Names of their own are not localized. Also, the application is initialized before
// the localization package is initialized.
String get appTitle => "MoonSnake Wallet | Non-Custodial Multi-Coin Wallet & DEX";
String get appShortTitle => "MoonSnake Wallet";

// We're using a hardcoded seed for the hidden login instead
// of generating it on the fly. This will allow us to access
// previously connected Trezor wallet accounts data and speed up
// the reactivation of its coins.
String get seedForHiddenLogin => 'hidden-login';

Map<String, int> priorityCoinsAbbrMap = {
  'KMD': 30,
  'BTC-segwit': 20,
  'ETH': 20,
  'LTC-segwit': 20,
  'USDT-ERC20': 20,
  'BNB': 11,
  'ETC': 11,
  'DOGE': 11,
  'DASH': 11,
  'MATIC': 10,
  'FTM': 10,
  'AVAX': 10,
  'HT': 10,
  'MOVR': 10,
};

const List<String> excludedAssetList = [
  'ADEXBSCT',
  'ADEXBSC',
  'BRC',
  'WID',
  'EPC',
  'CFUN',
  'ENT',
  'PLY',
  'ILNSW-PLG20',
  'FENIX',
  'AWR',
  'BOT',
  'ARRR',
  'ZOMBIE',
  'SMTF-v2',
  'SFUSD',
  'VOTE2023',
  'RICK',
  'MORTY',

  // NFT v2 coins: https://github.com/KomodoPlatform/coins/pull/1061
  // NFT upgrade is not merged yet, and the coins will likely be used in the
  // background, so users do not need to see them.
  'NFT_ETH',
  'NFT_AVAX',
  'NFT_BNB',
  'NFT_FTM',
  'NFT_MATIC',
];

const List<String> excludedAssetListTrezor = [
  // https://github.com/KomodoPlatform/atomicDEX-API/issues/1510
  'BCH',
  // https://github.com/KomodoPlatform/coins/pull/619/files
  // Can't use modified config directly, since it includes features,
  // not implemented on webdex side yet (e.g. 0.4.2 doesn't have segwit)
  'VAL',
];

// Assets in wallet-only mode on app level,
// global wallet-only assets are defined in coins config files.
const List<String> appWalletOnlyAssetList = [
  'BET',
  'BOTS',
  'CRYPTO',
  'DEX',
  'HODL',
  'JUMBLR',
  'MGW',
  'MSHARK',
  'PANGEA',
  'REVS',
  'SUPERNET',
];

List<String> get enabledByDefaultCoins => [
      'BTC-segwit',
      'KMD',
      'LTC-segwit',
      'ETH',
      'MATIC',
      'BNB',
      'AVAX',
      'FTM',
      if (kDebugMode || kProfileMode) 'DOC',
      if (kDebugMode || kProfileMode) 'MARTY',
    ];

List<String> get enabledByDefaultTrezorCoins => [
      'BTC',
      'KMD',
      'LTC',
    ];

List<String> get coinsWithFaucet => ['RICK', 'MORTY', 'DOC', 'MARTY'];

const String logsDbName = 'logs';
const String appFolder = 'KomodoWallet';

Future<String> get applicationDocumentsDirectory async => kIsWeb
    ? appFolder
    : '${(await getApplicationDocumentsDirectory()).path}/$appFolder';
