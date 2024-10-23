// Generated file with prominent colors for images
// The script extracts the most prominent color from each image in a directory
// and saves the results in this Dart file as a map.

import 'dart:ui';

import 'package:web_dex/shared/utils/utils.dart';

Color? getCoinColorFromId(String id) {
  final abbr = abbr2Ticker(id);
  return getCoinColor(abbr);
}

Color? getCoinColor(String ticker) {
  final imagePath = _getCoinIconFileName(ticker);
  final color = _prominentColors[imagePath];

  return color != null
      ? Color(int.parse(color.substring(1), radix: 16) | 0xFF000000)
      : null;
}

String _getCoinIconFileName(String abbr) {
  final fileName = abbr2Ticker(abbr)
      .toLowerCase()
      // Remove any underscore suffixes _{SUFFIX}. E.g. doc_old -> doc
      .replaceAll(RegExp(r'_.*'), '');
  return fileName;
}

final Map<String, String> _prominentColors = {
  "runes": "#d7a316",
  "labs": "#0d0d0d",
  "osmo": "#770fb9",
  "tft": "#d038ec",
  "bttc": "#050505",
  "shib": "#fb9f0c",
  "cy": "#040404",
  "dodo": "#0a0a04",
  "psf": "#040505",
  "dash": "#048be6",
  "egld": "#1d4cb4",
  "uni": "#f80577",
  "arpa": "#b6bec3",
  "woo": "#24242c",
  "rsr": "#040404",
  "neng": "#dbdacd",
  "xec": "#076cbc",
  "cfx": "#ebf6f6",
  "vite": "#047cfc",
  "slp": "#0cc38c",
  "loom": "#46bbfb",
  "snx": "#5eccf9",
  "zet": "#2b7c91",
  "chf": "#c03128",
  "zec": "#ebb043",
  "mkr": "#1aa899",
  "tel": "#14c6fb",
  "jkrw": "#154fa0",
  "sys": "#0480c4",
  "cake": "#d28a4b",
  "waf": "#ebcbb1",
  "wcn": "#e39b04",
  "trac": "#3fca9f",
  "busd": "#f3bc0c",
  "jchf": "#da0626",
  "minds": "#5a5959",
  "nyc": "#1a56b4",
  "krw": "#dbd0cf",
  "agix": "#6715fa",
  "qtum": "#2e98ce",
  "avaxt": "#e74041",
  "huf": "#c43c4d",
  "cds": "#a67116",
  "mil": "#49b1e6",
  "ftm": "#14b4ec",
  "sol": "#63f89e",
  "joy": "#7f4ddf",
  "band": "#4f68f9",
  "whive": "#c4ed08",
  "flo": "#207ea0",
  "mc": "#ee9c42",
  "zrx": "#2f2b2b",
  "okb": "#2a67ec",
  "nav": "#e6e6e7",
  "wld": "#040404",
  "space_bep20": "#ec456a",
  "doge": "#c1a433",
  "blk": "#d6ac58",
  "bnt": "#040d2a",
  "matic": "#6e40d7",
  "banano": "#383839",
  "bal": "#1d1d1d",
  "game": "#2c4559",
  "gala": "#051d35",
  "ren": "#090917",
  "bnb": "#f1b82e",
  "uno": "#e2b21f",
  "aipg": "#6b6769",
  "nok": "#df3839",
  "tusd": "#2a2d7e",
  "ltc": "#bebaba",
  "nmc": "#176a9b",
  "space": "#ec456a",
  "btcz": "#4b4a47",
  "vra": "#df1a3f",
  "gleec": "#8c44fc",
  "zer": "#050505",
  "dai": "#f2b530",
  "clam": "#20c3d1",
  "qrc20": "#2e98ce",
  "trc": "#3c3c3c",
  "xep": "#10409c",
  "hlc": "#043c7c",
  "emc2": "#04c9fa",
  "ada": "#0d1d2f",
  "iotx": "#c6f4f5",
  "uma": "#f94848",
  "link": "#2958d8",
  "space_ftm20": "#ec456a",
  "case": "#080e10",
  "efl": "#fb930d",
  "wbtc": "#201a2c",
  "eiln": "#52ada1",
  "xsgd": "#144be4",
  "btx": "#fb2da1",
  "tryb": "#04144b",
  "rpl": "#fc9f60",
  "sxp": "#fc6431",
  "cro": "#103d65",
  "ape": "#0755f8",
  "doc": "#7e4152",
  "nexo": "#c4cee4",
  "dot": "#e30477",
  "testbtc": "#f6911a",
  "celr": "#040404",
  "dime": "#0c4ca4",
  "qkc": "#2a7ebb",
  "vrsc": "#3063d2",
  "omg": "#101010",
  "movr": "#f4b406",
  "jsek": "#0a6fa5",
  "eos": "#282828",
  "solve": "#d2d2db",
  "chips": "#577f80",
  "leo": "#14051c",
  "sbch": "#c3e454",
  "ils": "#1541a9",
  "husd": "#045efa",
  "ewt": "#a464fc",
  "pivx": "#5c4575",
  "usdf": "#0cc38c",
  "gnt": "#041c54",
  "colx": "#75c1ae",
  "rtb": "#861b19",
  "prcy": "#0b3732",
  "gmx": "#1395ea",
  "iris": "#7a559a",
  "avax": "#e74041",
  "sek": "#155889",
  "qi": "#242424",
  "ton": "#048bcc",
  "ava": "#3f3c61",
  "crnc": "#e88717",
  "xvc": "#fb0808",
  "ilnf": "#1a4716",
  "cvc": "#39ae3d",
  "cvt": "#1c0c4c",
  "scrt": "#1e1e1e",
  "xlm": "#040404",
  "evr": "#39cdf7",
  "usdd": "#d2e1dd",
  "exn": "#4ceac3",
  "pink": "#ea77a7",
  "pyr": "#f69725",
  "babydoge": "#3b241e",
  "mona": "#ddc699",
  "ethr": "#627de8",
  "jrt": "#54fc74",
  "euroe": "#243c4b",
  "nyan": "#215cae",
  "qrc": "#2e98ce",
  "mcl": "#ec0404",
  "yfii": "#ec2c76",
  "lstr": "#773394",
  "sgd": "#e24652",
  "ttt": "#7029b1",
  "fet": "#1f324a",
  "gt": "#cc5454",
  "dust": "#65042b",
  "jst": "#b41515",
  "dx": "#f2a214",
  "eth": "#627de8",
  "gns": "#47f29a",
  "jjpy": "#bc052d",
  "1inch": "#d62122",
  "ink": "#de1a13",
  "nzds": "#293c4f",
  "seele": "#d3e1e5",
  "put": "#3bb474",
  "rlc": "#fbd604",
  "bep": "#f1b82e",
  "eca": "#a815db",
  "bgn": "#129271",
  "flexusd": "#dfd9fc",
  "kmd": "#58C0AB",
  "jsgd": "#ec2637",
  "ron": "#112258",
  "inj": "#1bddee",
  "glm": "#041c55",
  "xor": "#e4242c",
  "xna": "#d4c4da",
  "borg": "#04c28c",
  "jgold": "#d39b53",
  "jgbp": "#cb1932",
  "ant": "#2bd1e0",
  "minu": "#e3822b",
  "ddd": "#8cc41c",
  "dent": "#646464",
  "xvg": "#8ee6fc",
  "dkk": "#c12240",
  "dia": "#9c3898",
  "awc": "#299cfc",
  "hpy": "#2484e1",
  "xtz": "#a4df04",
  "ftmt": "#14b4ec",
  "hex": "#fc683f",
  "zoin": "#1e180d",
  "myr": "#1944a2",
  "dpc": "#049c94",
  "il8p": "#050505",
  "hkd": "#c82717",
  "jbrl": "#0e9e41",
  "diac": "#1b8beb",
  "icx": "#1cc4cb",
  "rvn": "#373f80",
  "brz": "#acdac5",
  "aibc": "#c8ad59",
  "ldo": "#f49c8b",
  "tblk": "#1f201f",
  "ilv": "#593790",
  "lrc": "#29b5f5",
  "yfi": "#0568e0",
  "usdt": "#259e78",
  "brl": "#bacca3",
  "pnk": "#3c3b3e",
  "usdc": "#3d72c3",
  "jusd": "#723456",
  "xmy": "#eb0f74",
  "marty": "#6e4953",
  "dfx": "#08d7f4",
  "xvs": "#f4bb51",
  "varrr": "#0c151c",
  "jpyc": "#ced3e7",
  "vtc": "#048556",
  "space_avx20": "#ec456a",
  "clp": "#3b3f4b",
  "taz": "#31190e",
  "powr": "#06b9a6",
  "glmr": "#e4147c",
  "fjc": "#04aceb",
  "ht": "#2a3069",
  "aby": "#b81c18",
  "mewc": "#d2ba7c",
  "glc": "#fcbc04",
  "swap": "#4464e3",
  "pln": "#c81835",
  "bkc": "#73c173",
  "lynx": "#0f61ad",
  "jcny": "#ec1e25",
  "tbch": "#8cc250",
  "maza": "#e6d8be",
  "chsb": "#04c28c",
  "inr": "#ebc7a8",
  "pot": "#0f592e",
  "gm": "#faecdf",
  "czk": "#c31a1e",
  "jpln": "#dc163e",
  "ont": "#31a2bc",
  "signa": "#c6c6c6",
  "vprm": "#121212",
  "bsty": "#1d3d75",
  "hrk": "#d44141",
  "shr": "#196fb4",
  "koin": "#045322",
  "aud": "#2c4475",
  "atom": "#2e3147",
  "mxn": "#dad3d0",
  "fil": "#41bfc9",
  "twt": "#3474bc",
  "val": "#14202c",
  "xidr": "#f41515",
  "ankr": "#2e6af5",
  "uqc": "#cd343b",
  "tbtc": "#1c242c",
  "smart_chain": "#276580",
  "enj": "#604cbd",
  "jaud": "#0a1269",
  "uis": "#1c2b44",
  "jmxn": "#166d4b",
  "iln": "#d9d9d5",
  "pnd": "#dcdbd3",
  "paxg": "#e2cc4c",
  "qiair": "#242424",
  "supernet": "#f28535",
  "aur": "#108a5f",
  "qc": "#05d3b8",
  "ninja": "#080f14",
  "aave": "#2db9c5",
  "mln": "#0a1428",
  "xcn": "#353234",
  "cvx": "#e0bca5",
  "pax": "#38805e",
  "ufo": "#0c1d2d",
  "bidr": "#fceab5",
  "bnbt": "#f1b82e",
  "elf": "#2a5cb9",
  "leash": "#e58113",
  "gbx": "#1664ad",
  "imx": "#6f71b4",
  "rtm": "#b54a2c",
  "iost": "#1c1c1c",
  "actn": "#fb0404",
  "one": "#04ade8",
  "dp": "#e41c24",
  "jeur": "#d8b617",
  "zombie": "#500f0a",
  "srm": "#63d8e7",
  "zar": "#dcb7ab",
  "jdb": "#273a50",
  "avn": "#27cbba",
  "dogedash": "#e29a55",
  "dgc": "#d7d5cf",
  "aya": "#f9bd16",
  "axe": "#fb0404",
  "space_plg20": "#ec456a",
  "dimi": "#11e0e6",
  "blocx": "#1c232d",
  "ethk": "#627de8",
  "fei": "#249c6c",
  "maze": "#d57113",
  "jcad": "#fccece",
  "kcs": "#0491db",
  "knc": "#31ca9d",
  "best": "#eb3354",
  "prux": "#f3b21c",
  "waves": "#0453fb",
  "mana": "#f72c52",
  "comp": "#04d193",
  "etc": "#328132",
  "gno": "#05a6c3",
  "gmt": "#dab258",
  "thc_bep20": "#efae2c",
  "rndr": "#cc1414",
  "lswap": "#fc4207",
  "dgb": "#0468d0",
  "cad": "#e3dddd",
  "axs": "#0454d4",
  "ccl": "#35acf3",
  "clc": "#e2e7eb",
  "skl": "#040404",
  "med": "#04aefb",
  "vrm": "#5b6c7b",
  "aslp": "#0cc38c",
  "trx": "#ec0426",
  "sum": "#194ad5",
  "hot": "#8733fb",
  "btu": "#654585",
  "jtry": "#e40e16",
  "gft": "#9a2f62",
  "ric": "#5ee3db",
  "ppc": "#3bae53",
  "nzd": "#2b4374",
  "sushi": "#d55891",
  "rdd": "#e1c327",
  "lnc": "#fac02b",
  "bat": "#fb4f04",
  "ubt": "#2e5d85",
  "rev": "#751a4c",
  "gst": "#2b2527",
  "uos": "#7c54d2",
  "sibm": "#cfdbdd",
  "btt": "#050505",
  "zinu": "#f1ab29",
  "usbl": "#1d9454",
  "btc": "#f6911a",
  "idr": "#f0f0f0",
  "qiad": "#242424",
  "crt": "#d1d3e9",
  "mm": "#efa206",
  "try": "#d7343e",
  "fxs": "#040404",
  "jnzd": "#cf778b",
  "cdn": "#f60808",
  "sca": "#546c7c",
  "fjcb": "#f69f04",
  "rbtc": "#fc9d37",
  "stfiro": "#9b2434",
  "tkl": "#1e2636",
  "chz": "#cb0423",
  "bone": "#d53920",
  "thb": "#dad7df",
  "crv": "#3e629d",
  "vgx": "#4d4cd8",
  "jphp": "#cb1627",
  "storj": "#2681fb",
  "cadc": "#fcdbdb",
  "ageur": "#8cb0fa",
  "floki": "#f09925",
  "lbc": "#045f48",
  "dogec": "#246cec",
  "bch": "#8cc250",
  "ilnsw": "#6be0ca",
  "grs": "#377d95",
  "ksm": "#040404",
  "bitn": "#e1deda",
  "php": "#b61523",
  "iota": "#232323",
  "sand": "#04abee",
  "adx": "#1b73ba",
  "tama": "#f3ca05",
  "ocean": "#181818",
  "mir": "#2b9ae9",
  "matictest": "#6e40d7",
  "loop": "#ec1b23",
  "thc": "#477928",
  "kip0004": "#2f3848",
  "sour": "#efbf1e",
  "gusd": "#04dbfa",
  "zil": "#47bebc",
  "qnt": "#040404",
  "via": "#545454",
  "grms": "#129eb2",
  "spacecoin": "#32406a",
  "kiiro": "#fcac44",
  "flow": "#04eb8c",
  "wwcn": "#e5a011",
  "req": "#04e29c",
  "doggy": "#203a54",
  "eure": "#0582c0",
  "mask": "#1f6cf4",
  "rep": "#0e0e20",
  "eurs": "#2699f5",
  "firo": "#9c1c2c",
  "lcc": "#189c29",
  "bte": "#fce404",
  "erc": "#627de8",
  "spice": "#e64f48",
  "flux": "#2a60cf",
  "vet": "#14bafb",
  "oc": "#1a5590",
  "btcd": "#fc6404",
  "tsl": "#5eac85",
  "cummies": "#f506c1",
  "xpm": "#fbd61b",
  "cel": "#4354a4",
  "vote2024": "#2f3848",
  "doi": "#239ddc",
  "boli": "#1f2633",
  "ftc": "#263139",
  "kip0003": "#2f3848",
  "xrg": "#142c54",
  "s4f": "#f18e14",
  "xrp": "#22282e",
  "cst": "#3469bf",
  "near": "#040404",
  "qbt": "#1ad5be",
  "grlc": "#f9d76b",
  "pgx": "#cc0404",
  "grt": "#5841cb",
  "chta": "#daba61",
  "ubq": "#04e88e",
  "bbk": "#24cfd9",
  "nvc": "#ebe533",
  "arrr": "#c29f47",
  "tqtum": "#2e98ce",
  "utk": "#2f3478",
  "kip0002": "#2f3848",
  "snt": "#596bed",
};
