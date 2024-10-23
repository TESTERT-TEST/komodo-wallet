import 'package:equatable/equatable.dart';

class TotalVolume extends Equatable {
  const TotalVolume({
    this.aed,
    this.ars,
    this.aud,
    this.bch,
    this.bdt,
    this.bhd,
    this.bmd,
    this.bnb,
    this.brl,
    this.btc,
    this.cad,
    this.chf,
    this.clp,
    this.cny,
    this.czk,
    this.dkk,
    this.dot,
    this.eos,
    this.eth,
    this.eur,
    this.gbp,
    this.gel,
    this.hkd,
    this.huf,
    this.idr,
    this.ils,
    this.inr,
    this.jpy,
    this.krw,
    this.kwd,
    this.lkr,
    this.ltc,
    this.mmk,
    this.mxn,
    this.myr,
    this.ngn,
    this.nok,
    this.nzd,
    this.php,
    this.pkr,
    this.pln,
    this.rub,
    this.sar,
    this.sek,
    this.sgd,
    this.thb,
    this.tRY,
    this.twd,
    this.uah,
    this.usd,
    this.vef,
    this.vnd,
    this.xag,
    this.xau,
    this.xdr,
    this.xlm,
    this.xrp,
    this.yfi,
    this.zar,
    this.bits,
    this.link,
    this.sats,
  });

  factory TotalVolume.fromJson(Map<String, dynamic> json) => TotalVolume(
        aed: (json['aed'] as num?)?.toDouble(),
        ars: (json['ars'] as num?)?.toDouble(),
        aud: (json['aud'] as num?)?.toDouble(),
        bch: (json['bch'] as num?)?.toDouble(),
        bdt: (json['bdt'] as num?)?.toDouble(),
        bhd: (json['bhd'] as num?)?.toDouble(),
        bmd: (json['bmd'] as num?)?.toDouble(),
        bnb: (json['bnb'] as num?)?.toDouble(),
        brl: (json['brl'] as num?)?.toDouble(),
        btc: (json['btc'] as num?)?.toDouble(),
        cad: (json['cad'] as num?)?.toDouble(),
        chf: (json['chf'] as num?)?.toDouble(),
        clp: (json['clp'] as num?)?.toDouble(),
        cny: (json['cny'] as num?)?.toDouble(),
        czk: (json['czk'] as num?)?.toDouble(),
        dkk: (json['dkk'] as num?)?.toDouble(),
        dot: (json['dot'] as num?)?.toDouble(),
        eos: (json['eos'] as num?)?.toDouble(),
        eth: (json['eth'] as num?)?.toDouble(),
        eur: (json['eur'] as num?)?.toDouble(),
        gbp: (json['gbp'] as num?)?.toDouble(),
        gel: (json['gel'] as num?)?.toDouble(),
        hkd: (json['hkd'] as num?)?.toDouble(),
        huf: (json['huf'] as num?)?.toDouble(),
        idr: (json['idr'] as num?)?.toDouble(),
        ils: (json['ils'] as num?)?.toDouble(),
        inr: (json['inr'] as num?)?.toDouble(),
        jpy: (json['jpy'] as num?)?.toDouble(),
        krw: (json['krw'] as num?)?.toDouble(),
        kwd: (json['kwd'] as num?)?.toDouble(),
        lkr: (json['lkr'] as num?)?.toDouble(),
        ltc: (json['ltc'] as num?)?.toDouble(),
        mmk: (json['mmk'] as num?)?.toDouble(),
        mxn: (json['mxn'] as num?)?.toDouble(),
        myr: (json['myr'] as num?)?.toDouble(),
        ngn: (json['ngn'] as num?)?.toDouble(),
        nok: (json['nok'] as num?)?.toDouble(),
        nzd: (json['nzd'] as num?)?.toDouble(),
        php: (json['php'] as num?)?.toDouble(),
        pkr: (json['pkr'] as num?)?.toDouble(),
        pln: (json['pln'] as num?)?.toDouble(),
        rub: (json['rub'] as num?)?.toDouble(),
        sar: (json['sar'] as num?)?.toDouble(),
        sek: (json['sek'] as num?)?.toDouble(),
        sgd: (json['sgd'] as num?)?.toDouble(),
        thb: (json['thb'] as num?)?.toDouble(),
        tRY: (json['try'] as num?)?.toDouble(),
        twd: (json['twd'] as num?)?.toDouble(),
        uah: (json['uah'] as num?)?.toDouble(),
        usd: (json['usd'] as num?)?.toDouble(),
        vef: (json['vef'] as num?)?.toDouble(),
        vnd: json['vnd'] as num?,
        xag: (json['xag'] as num?)?.toDouble(),
        xau: (json['xau'] as num?)?.toDouble(),
        xdr: (json['xdr'] as num?)?.toDouble(),
        xlm: (json['xlm'] as num?)?.toDouble(),
        xrp: (json['xrp'] as num?)?.toDouble(),
        yfi: (json['yfi'] as num?)?.toDouble(),
        zar: (json['zar'] as num?)?.toDouble(),
        bits: (json['bits'] as num?)?.toDouble(),
        link: (json['link'] as num?)?.toDouble(),
        sats: (json['sats'] as num?)?.toDouble(),
      );
  final num? aed;
  final num? ars;
  final num? aud;
  final num? bch;
  final num? bdt;
  final num? bhd;
  final num? bmd;
  final num? bnb;
  final num? brl;
  final num? btc;
  final num? cad;
  final num? chf;
  final num? clp;
  final num? cny;
  final num? czk;
  final num? dkk;
  final num? dot;
  final num? eos;
  final num? eth;
  final num? eur;
  final num? gbp;
  final num? gel;
  final num? hkd;
  final num? huf;
  final num? idr;
  final num? ils;
  final num? inr;
  final num? jpy;
  final num? krw;
  final num? kwd;
  final num? lkr;
  final num? ltc;
  final num? mmk;
  final num? mxn;
  final num? myr;
  final num? ngn;
  final num? nok;
  final num? nzd;
  final num? php;
  final num? pkr;
  final num? pln;
  final num? rub;
  final num? sar;
  final num? sek;
  final num? sgd;
  final num? thb;
  final num? tRY;
  final num? twd;
  final num? uah;
  final num? usd;
  final num? vef;
  final num? vnd;
  final num? xag;
  final num? xau;
  final num? xdr;
  final num? xlm;
  final num? xrp;
  final num? yfi;
  final num? zar;
  final num? bits;
  final num? link;
  final num? sats;

  Map<String, dynamic> toJson() => {
        'aed': aed,
        'ars': ars,
        'aud': aud,
        'bch': bch,
        'bdt': bdt,
        'bhd': bhd,
        'bmd': bmd,
        'bnb': bnb,
        'brl': brl,
        'btc': btc,
        'cad': cad,
        'chf': chf,
        'clp': clp,
        'cny': cny,
        'czk': czk,
        'dkk': dkk,
        'dot': dot,
        'eos': eos,
        'eth': eth,
        'eur': eur,
        'gbp': gbp,
        'gel': gel,
        'hkd': hkd,
        'huf': huf,
        'idr': idr,
        'ils': ils,
        'inr': inr,
        'jpy': jpy,
        'krw': krw,
        'kwd': kwd,
        'lkr': lkr,
        'ltc': ltc,
        'mmk': mmk,
        'mxn': mxn,
        'myr': myr,
        'ngn': ngn,
        'nok': nok,
        'nzd': nzd,
        'php': php,
        'pkr': pkr,
        'pln': pln,
        'rub': rub,
        'sar': sar,
        'sek': sek,
        'sgd': sgd,
        'thb': thb,
        'try': tRY,
        'twd': twd,
        'uah': uah,
        'usd': usd,
        'vef': vef,
        'vnd': vnd,
        'xag': xag,
        'xau': xau,
        'xdr': xdr,
        'xlm': xlm,
        'xrp': xrp,
        'yfi': yfi,
        'zar': zar,
        'bits': bits,
        'link': link,
        'sats': sats,
      };

  TotalVolume copyWith({
    num? aed,
    num? ars,
    num? aud,
    num? bch,
    num? bdt,
    num? bhd,
    num? bmd,
    num? bnb,
    num? brl,
    num? btc,
    num? cad,
    num? chf,
    num? clp,
    num? cny,
    num? czk,
    num? dkk,
    num? dot,
    num? eos,
    num? eth,
    num? eur,
    num? gbp,
    num? gel,
    num? hkd,
    num? huf,
    num? idr,
    num? ils,
    num? inr,
    num? jpy,
    num? krw,
    num? kwd,
    num? lkr,
    num? ltc,
    num? mmk,
    num? mxn,
    num? myr,
    num? ngn,
    num? nok,
    num? nzd,
    num? php,
    num? pkr,
    num? pln,
    num? rub,
    num? sar,
    num? sek,
    num? sgd,
    num? thb,
    num? tRY,
    num? twd,
    num? uah,
    num? usd,
    num? vef,
    num? vnd,
    num? xag,
    num? xau,
    num? xdr,
    num? xlm,
    num? xrp,
    num? yfi,
    num? zar,
    num? bits,
    num? link,
    num? sats,
  }) {
    return TotalVolume(
      aed: aed ?? this.aed,
      ars: ars ?? this.ars,
      aud: aud ?? this.aud,
      bch: bch ?? this.bch,
      bdt: bdt ?? this.bdt,
      bhd: bhd ?? this.bhd,
      bmd: bmd ?? this.bmd,
      bnb: bnb ?? this.bnb,
      brl: brl ?? this.brl,
      btc: btc ?? this.btc,
      cad: cad ?? this.cad,
      chf: chf ?? this.chf,
      clp: clp ?? this.clp,
      cny: cny ?? this.cny,
      czk: czk ?? this.czk,
      dkk: dkk ?? this.dkk,
      dot: dot ?? this.dot,
      eos: eos ?? this.eos,
      eth: eth ?? this.eth,
      eur: eur ?? this.eur,
      gbp: gbp ?? this.gbp,
      gel: gel ?? this.gel,
      hkd: hkd ?? this.hkd,
      huf: huf ?? this.huf,
      idr: idr ?? this.idr,
      ils: ils ?? this.ils,
      inr: inr ?? this.inr,
      jpy: jpy ?? this.jpy,
      krw: krw ?? this.krw,
      kwd: kwd ?? this.kwd,
      lkr: lkr ?? this.lkr,
      ltc: ltc ?? this.ltc,
      mmk: mmk ?? this.mmk,
      mxn: mxn ?? this.mxn,
      myr: myr ?? this.myr,
      ngn: ngn ?? this.ngn,
      nok: nok ?? this.nok,
      nzd: nzd ?? this.nzd,
      php: php ?? this.php,
      pkr: pkr ?? this.pkr,
      pln: pln ?? this.pln,
      rub: rub ?? this.rub,
      sar: sar ?? this.sar,
      sek: sek ?? this.sek,
      sgd: sgd ?? this.sgd,
      thb: thb ?? this.thb,
      tRY: tRY ?? this.tRY,
      twd: twd ?? this.twd,
      uah: uah ?? this.uah,
      usd: usd ?? this.usd,
      vef: vef ?? this.vef,
      vnd: vnd ?? this.vnd,
      xag: xag ?? this.xag,
      xau: xau ?? this.xau,
      xdr: xdr ?? this.xdr,
      xlm: xlm ?? this.xlm,
      xrp: xrp ?? this.xrp,
      yfi: yfi ?? this.yfi,
      zar: zar ?? this.zar,
      bits: bits ?? this.bits,
      link: link ?? this.link,
      sats: sats ?? this.sats,
    );
  }

  @override
  List<Object?> get props {
    return [
      aed,
      ars,
      aud,
      bch,
      bdt,
      bhd,
      bmd,
      bnb,
      brl,
      btc,
      cad,
      chf,
      clp,
      cny,
      czk,
      dkk,
      dot,
      eos,
      eth,
      eur,
      gbp,
      gel,
      hkd,
      huf,
      idr,
      ils,
      inr,
      jpy,
      krw,
      kwd,
      lkr,
      ltc,
      mmk,
      mxn,
      myr,
      ngn,
      nok,
      nzd,
      php,
      pkr,
      pln,
      rub,
      sar,
      sek,
      sgd,
      thb,
      tRY,
      twd,
      uah,
      usd,
      vef,
      vnd,
      xag,
      xau,
      xdr,
      xlm,
      xrp,
      yfi,
      zar,
      bits,
      link,
      sats,
    ];
  }
}
