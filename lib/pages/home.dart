import 'package:arbi/providers/stable_coin_provider.dart';
import 'package:arbi/ui/background.dart';
import 'package:arbi/widgets/coin_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final stableCoins = Provider.of<StableCoinProvider>(context);
    List<Map> stableCoinsList = [
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
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          const HeadersScreen(
            icon: Icons.money_rounded,
          ),
          _MainScroll(stableCoinsList),
        ],
      )),
    );
  }
}

class _MainScroll extends StatefulWidget {
  final List<Map> monedas;
  const _MainScroll(this.monedas);

  @override
  State<_MainScroll> createState() => _MainScrollState();
}

class _MainScrollState extends State<_MainScroll> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
            delegate: _SliverCustomHeaderDelegate(
                child: const _Titulo(), minheight: 130, maxheight: 250)),
        SliverList(
            delegate: SliverChildListDelegate([
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    widget.monedas.sort((m1, m2) {
                      return m1["compra"].compareTo(m2["compra"]);
                    });
                  });
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Compra',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    widget.monedas.sort((m1, m2) {
                      return m2["venta"].compareTo(m1["venta"]);
                    });
                  });
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Venta', style: TextStyle(color: Colors.white)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
          //SizedBox(
          //  height: MediaQuery.of(context).size.height * 0.1,
          //),
          ...widget.monedas.map((coin) => GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse('${coin['web']}');

                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch url');
                  }
                },
                child: CoinCard(
                    name: coin['nombre'],
                    compra: coin['compra'] ?? 0,
                    venta: coin['venta'] ?? 0,
                    image: coin['logo']),
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
