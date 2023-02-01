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
    //print(coins);
    return coins;
  }
}

/*
{argenbtc: , bitex: , buenbit: , ripio: , ripioexchange: , satoshitango: , cryptomkt: , decrypto: , latamex: , bitso: , copter: , letsbit: , fiwind: , lemoncash: , bitmonedero: , belo: , tiendacrypto: , saldo: , kriptonmarket: , calypso: , pluscrypto: , bybit: }
 */
