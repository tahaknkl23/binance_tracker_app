class CryptoModel {
  List<Data>? data;
  Info? info;

  CryptoModel({this.data, this.info});

  CryptoModel.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    info = json["info"] == null ? null : Info.fromJson(json["info"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data["data"] = this.data?.map((e) => e.toJson()).toList();
    }
    if (info != null) {
      data["info"] = info?.toJson();
    }
    return data;
  }
}

class Info {
  int? coinsNum;
  int? time;

  Info({this.coinsNum, this.time});

  Info.fromJson(Map<String, dynamic> json) {
    coinsNum = json["coins_num"];
    time = json["time"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["coins_num"] = coinsNum;
    data["time"] = time;
    return data;
  }
}

class Data {
  String? id;
  String? symbol;
  String? name;
  String? nameid;
  int? rank;
  String? priceUsd;
  String? percentChange24H;
  String? percentChange1H;
  String? percentChange7D;
  String? priceBtc;
  String? marketCapUsd;
  double? volume24;
  double? volume24A;
  String? csupply;
  String? tsupply;
  String? msupply;

  Data(
      {this.id,
      this.symbol,
      this.name,
      this.nameid,
      this.rank,
      this.priceUsd,
      this.percentChange24H,
      this.percentChange1H,
      this.percentChange7D,
      this.priceBtc,
      this.marketCapUsd,
      this.volume24,
      this.volume24A,
      this.csupply,
      this.tsupply,
      this.msupply});

  Data.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    symbol = json["symbol"];
    name = json["name"];
    nameid = json["nameid"];
    rank = json["rank"];
    priceUsd = json["price_usd"];
    percentChange24H = json["percent_change_24h"];
    percentChange1H = json["percent_change_1h"];
    percentChange7D = json["percent_change_7d"];
    priceBtc = json["price_btc"];
    marketCapUsd = json["market_cap_usd"];
    volume24 = json["volume24"];
    volume24A = json["volume24a"];
    csupply = json["csupply"];
    tsupply = json["tsupply"];
    msupply = json["msupply"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["symbol"] = symbol;
    data["name"] = name;
    data["nameid"] = nameid;
    data["rank"] = rank;
    data["price_usd"] = priceUsd;
    data["percent_change_24h"] = percentChange24H;
    data["percent_change_1h"] = percentChange1H;
    data["percent_change_7d"] = percentChange7D;
    data["price_btc"] = priceBtc;
    data["market_cap_usd"] = marketCapUsd;
    data["volume24"] = volume24;
    data["volume24a"] = volume24A;
    data["csupply"] = csupply;
    data["tsupply"] = tsupply;
    data["msupply"] = msupply;
    return data;
  }
}
