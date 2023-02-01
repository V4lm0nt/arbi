import 'package:arbi/models/stable_coin_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StableCoinProvider with ChangeNotifier {
  Map<String, CoinResponse> coins = {};

  StableCoinProvider() {
    getStableCoinProvider();
  }

  getStableCoinProvider() async {
    final response = await http.get(Uri.https('criptoya.com', 'api/usdt/ars'));
    if (response.statusCode != 200) return;
    final stableCoins = coinResponseFromJson(response.body);
    coins.addAll(stableCoins);
    notifyListeners();
    return coins;
  }
}
