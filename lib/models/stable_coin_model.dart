// To parse this JSON data, do
//
//     final coinResponse = coinResponseFromJson(jsonString);

import 'dart:convert';

Map<String, CoinResponse> coinResponseFromJson(String str) =>
    Map.from(json.decode(str)).map(
        (k, v) => MapEntry<String, CoinResponse>(k, CoinResponse.fromJson(v)));

String coinResponseToJson(Map<String, CoinResponse> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class CoinResponse {
  CoinResponse({
    required this.ask,
    required this.totalAsk,
    required this.bid,
    required this.totalBid,
    required this.time,
  });

  double? ask;
  double? totalAsk;
  double? bid;
  double? totalBid;
  int time;

  factory CoinResponse.fromJson(Map<String, dynamic> json) => CoinResponse(
        ask: json["ask"].toDouble(),
        totalAsk: json["totalAsk"].toDouble(),
        bid: json["bid"].toDouble(),
        totalBid: json["totalBid"].toDouble(),
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "ask": ask,
        "totalAsk": totalAsk,
        "bid": bid,
        "totalBid": totalBid,
        "time": time,
      };
}
