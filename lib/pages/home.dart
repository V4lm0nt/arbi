import 'dart:math';

import 'package:arbi/providers/stable_coin_provider.dart';
import 'package:arbi/widgets/coin_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: const [
          _FondoApp(),
          _MainScroll(),
        ],
      )),
    );
  }
}

class _FondoApp extends StatelessWidget {
  const _FondoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 0.1),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    return Stack(
      children: [gradiente],
    );
  }
}

class _MainScroll extends StatelessWidget {
  const _MainScroll();

  @override
  Widget build(BuildContext context) {
    final stableCoins = Provider.of<StableCoinProvider>(context);
    final List<Map> stableCoinsList = [
      {
        'nombre': 'ArgenBTC',
        'compra': stableCoins.coins['argenbtc']?.ask,
        'venta': stableCoins.coins['argenbtc']?.bid,
        'logo': 'assets/logos/argenbtc.png',
        'web': 'https://www.argenbtc.com/'
      },
      {
        'nombre': 'Bitex',
        'compra': stableCoins.coins['bitex']?.ask,
        'venta': stableCoins.coins['bitex']?.bid,
        'logo': 'assets/logos/bitex.png',
        'web': 'https://www.bitex.com/'
      },
      {
        'nombre': 'Buenbit',
        'compra': stableCoins.coins['buenbit']?.ask,
        'venta': stableCoins.coins['buenbit']?.bid,
        'logo': 'assets/logos/buenbit.png',
        'web': 'https://www.buenbit.com/'
      },
      {
        'nombre': 'Ripio',
        'compra': stableCoins.coins['ripio']?.ask,
        'venta': stableCoins.coins['ripio']?.bid,
        'logo': 'assets/logos/ripio.png',
        'web': 'https://www.ripio.com/'
      },
      {
        'nombre': 'ripioexchange',
        'compra': stableCoins.coins['ripioexchange']?.ask,
        'venta': stableCoins.coins['ripioexchange']?.bid,
        'logo': 'assets/logos/ripio.png',
        'web': 'https://www.ripioexchange.com/'
      },
      {
        'nombre': 'satoshitango',
        'compra': stableCoins.coins['satoshitango']?.ask,
        'venta': stableCoins.coins['satoshitango']?.bid,
        'logo': 'assets/logos/satoshitango.png',
        'web': 'https://www.satoshitango.com/'
      },
      {
        'nombre': 'cryptomkt',
        'compra': stableCoins.coins['cryptomkt']?.ask,
        'venta': stableCoins.coins['cryptomkt']?.bid,
        'logo': 'assets/logos/cryptomkt.png',
        'web': 'https://www.cryptomkt.com/'
      },
      {
        'nombre': 'decrypto',
        'compra': stableCoins.coins['decrypto']?.ask,
        'venta': stableCoins.coins['decrypto']?.bid,
        'logo': 'assets/logos/decrypto.png',
        'web': 'https://www.decrypto.com/'
      },
      {
        'nombre': 'latamex',
        'compra': stableCoins.coins['latamex']?.ask,
        'venta': stableCoins.coins['latamex']?.bid,
        'logo': 'assets/logos/latamex.png',
        'web': 'https://www.latamex.com/'
      },
      {
        'nombre': 'bitso',
        'compra': stableCoins.coins['bitso']?.ask,
        'venta': stableCoins.coins['bitso']?.bid,
        'logo': 'assets/logos/bitso.png',
        'web': 'https://www.bitso.com/'
      },
      {
        'nombre': 'copter',
        'compra': stableCoins.coins['copter']?.ask,
        'venta': stableCoins.coins['copter']?.bid,
        'logo': 'assets/logos/copter.png',
        'web': 'https://www.copter.com/'
      },
      {
        'nombre': 'Let\'s Bit',
        'compra': stableCoins.coins['letsbit']?.ask,
        'venta': stableCoins.coins['letsbit']?.bid,
        'logo': 'assets/logos/letsbit.png',
        'web': 'https://www.letsbit.com/'
      },
      {
        'nombre': 'fiwind',
        'compra': stableCoins.coins['fiwind']?.ask,
        'venta': stableCoins.coins['fiwind']?.bid,
        'logo': 'assets/logos/fiwind.png',
        'web': 'https://www.fiwind.com/'
      },
      {
        'nombre': 'lemoncash',
        'compra': stableCoins.coins['lemoncash']?.ask,
        'venta': stableCoins.coins['lemoncash']?.bid,
        'logo': 'assets/logos/lemoncash.png',
        'web': 'https://www.lemoncash.com/'
      },
      {
        'nombre': 'bitmonedero',
        'compra': stableCoins.coins['bitmonedero']?.ask,
        'venta': stableCoins.coins['bitmonedero']?.bid,
        'logo': 'assets/logos/bitmonedero.png',
        'web': 'https://www.bitmonedero.com/'
      },
      {
        'nombre': 'belo',
        'compra': stableCoins.coins['belo']?.ask,
        'venta': stableCoins.coins['belo']?.bid,
        'logo': 'assets/logos/belo.png',
        'web': 'https://www.belo.com/'
      },
      {
        'nombre': 'tiendacrypto',
        'compra': stableCoins.coins['tiendacrypto']?.ask,
        'venta': stableCoins.coins['tiendacrypto']?.bid,
        'logo': 'assets/logos/tiendacrypto.png',
        'web': 'https://www.tiendacrypto.com/'
      },
      {
        'nombre': 'saldo',
        'compra': stableCoins.coins['saldo']?.ask,
        'venta': stableCoins.coins['saldo']?.bid,
        'logo': 'assets/logos/tiendacrypto.png',
        'web': 'https://www.saldo.com/'
      },
      {
        'nombre': 'kriptonmarket',
        'compra': stableCoins.coins['kriptonmarket']?.ask,
        'venta': stableCoins.coins['kriptonmarket']?.bid,
        'logo': 'assets/logos/kriptonmarket.jpg',
        'web': 'https://www.kriptonmarket.com/'
      },
      {
        'nombre': 'calypso',
        'compra': stableCoins.coins['calypso']?.ask,
        'venta': stableCoins.coins['calypso']?.bid,
        'logo': 'assets/logos/calypso.jpg',
        'web': 'https://www.calypso.com/'
      },
      {
        'nombre': 'pluscrypto',
        'compra': stableCoins.coins['pluscrypto']?.ask,
        'venta': stableCoins.coins['pluscrypto']?.bid,
        'logo': 'assets/logos/pluscrypto.png',
        'web': 'https://www.pluscrypto.com/'
      },
      {
        'nombre': 'bybit',
        'compra': stableCoins.coins['bybit']?.ask,
        'venta': stableCoins.coins['bybit']?.bid,
        'logo': 'assets/logos/buenbit.png',
        'web': 'https://www.bybit.com/'
      },
    ];
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
            delegate: _SliverCustomHeaderDelegate(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20.0),
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 195, 0, 255),
                              Color.fromARGB(255, 144, 0, 255)
                            ])),
                      ),
                    ),
                    _Titulo(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  child: Icon(Icons.currency_bitcoin),
                                ),
                                Text('Criptomonedas')
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.white.withOpacity(0.3),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Icon(Icons.currency_bitcoin),
                                  ),
                                ),
                                Text('StableCoins')
                              ],
                            ),
                            Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  child: Icon(Icons.currency_bitcoin),
                                ),
                                Text('Dolar')
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                minheight: 250,
                maxheight: 300)),
        SliverList(
            delegate: SliverChildListDelegate([
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                //TODO:sort list coins
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.arrow_upward),
                    Text('Compra'),
                    Icon(Icons.arrow_downward)
                  ],
                ),
              ),
              MaterialButton(
                //TODO:sort list coins
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.arrow_upward),
                    Text('Venta'),
                    Icon(Icons.arrow_downward)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          ...stableCoinsList.map((e) => GestureDetector(
                onTap: () {
                  //TODO:launcher para web
                  //print(e['nombre']);
                },
                child: CoinCard(
                    name: e['nombre'],
                    compra: e['compra'],
                    venta: e['venta'],
                    image: e['logo']),
              ))
        ])),
      ],
    );
  }
}

class _Titulo extends StatelessWidget {
  const _Titulo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Hola,',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Ivana.',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 30),
              ),
            ],
          ),
          const Text(
            'Estas son las cotizaciones de hoy',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minheight;
  final double maxheight;
  final Widget child;

  _SliverCustomHeaderDelegate(
      {required this.minheight, required this.maxheight, required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent => maxheight;

  @override
  double get minExtent => minheight;

  @override
  bool shouldRebuild(covariant _SliverCustomHeaderDelegate oldDelegate) {
    return maxheight != oldDelegate.maxheight ||
        minheight != oldDelegate.minheight ||
        child != oldDelegate.child;
  }
}
