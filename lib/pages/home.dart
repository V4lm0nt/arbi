import 'dart:math';

import 'package:arbi/providers/stable_coin_provider.dart';
import 'package:arbi/widgets/coin_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        _fondoApp(),
        _MainScroll(),
      ],
    ));
  }

  Widget _fondoApp() {
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
    final caja = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 0, 255, 179),
              Color.fromARGB(255, 0, 242, 255)
            ])),
      ),
    );
    return Stack(
      children: [
        gradiente,
        Positioned(top: -90, left: -30, child: caja),
        Positioned(bottom: -250, right: 0, child: caja)
      ],
    );
  }
}

class _MainScroll extends StatelessWidget {
  _MainScroll();

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
    ];
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
            delegate: _SliverCustomHeaderDelegate(
                child: const _Titulo(), minheight: 180, maxheight: 320)),
        SliverList(
            delegate: SliverChildListDelegate([
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: stableCoinsList.length,
            itemBuilder: (BuildContext context, int index) {
              return CoinCard(
                  name: stableCoinsList[index]['nombre'],
                  image: stableCoinsList[index]['logo'],
                  compra: stableCoinsList[index]['compra'],
                  venta: stableCoinsList[index]['venta']);
            },
          )
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
      padding: const EdgeInsets.only(left: 25.0, top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Hola,',
                style: TextStyle(
                    color: Color.fromRGBO(52, 54, 101, 1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Ivana.',
                style: TextStyle(
                    color: Color.fromRGBO(52, 54, 101, 1.0),
                    fontWeight: FontWeight.w300,
                    fontSize: 30),
              ),
            ],
          ),
          const Text(
            'Estas son las cotizaciones de hoy',
            style: TextStyle(
                color: Color.fromRGBO(52, 54, 101, 1.0),
                fontWeight: FontWeight.bold),
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
