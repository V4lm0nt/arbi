import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeadersScreen extends StatelessWidget {
  final IconData? icon;
  const HeadersScreen({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0XFF293357),
                Color(0XFF1C223B),
              ])),
        ),
        const HeaderWave(),
        const HeaderWaveGradient(),
        BackgroundIcons(
          icon: icon,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.88 + 5,
          top: MediaQuery.of(context).size.height * 0.24 - 5,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 40, 238, 248),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ],
    ));
  }
}

class BackgroundIcons extends StatelessWidget {
  final IconData? icon;
  const BackgroundIcons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Positioned(
      top: height * 0.0,
      right: width * 0.0,
      child: Transform.rotate(
        angle: 0.4,
        child: Row(
          children: [
            const SizedBox(
              height: 200,
            ),
            FaIcon(
              icon,
              size: 150,
              color: Colors.white.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWave extends StatelessWidget {
  const HeaderWave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color.fromRGBO(35 , 44, 51, 1),
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(100, 105.0), radius: 250);

    const Gradient gradiente = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color.fromARGB(255, 40, 53, 94),
          Color.fromARGB(255, 40, 53, 94),
          Color(0xff394a7b),

          //Color.fromARGB(62, 40, 238, 248),
        ],
        stops: [
          0.0,
          0.3,
          1.0
        ]);

    final paint = Paint()..shader = gradiente.createShader(rect);

    //propiedades del "lapiz" (Paint)
    paint.color = const Color(0xff384777);
    paint.style = PaintingStyle.fill; //.fill para rellenar
    paint.strokeWidth = 4;

    final path = Path();

    // dibujar con el path y el lapiz (paint)

    //mitad de la pantalla (inicio, mitad)

    //path.lineTo(-100, size.height * 0.30);
//
    //path.quadraticBezierTo(size.width * 0.1, size.height * 0.33,
    //    size.width * 0.1, size.height * 0.33);
    //path.quadraticBezierTo(size.width * 0.2, size.height * 0.31,
    //    size.width * 0.2, size.height * 0.31);
    //path.quadraticBezierTo(size.width * 0.3, size.height * 0.33,
    //    size.width * 0.3, size.height * 0.33);
    //path.quadraticBezierTo(size.width * 0.4, size.height * 0.29,
    //    size.width * 0.4, size.height * 0.29);
    //path.quadraticBezierTo(size.width * 0.5, size.height * 0.31,
    //    size.width * 0.5, size.height * 0.31);
    //path.quadraticBezierTo(size.width * 0.6, size.height * 0.29,
    //    size.width * 0.6, size.height * 0.29);
    //path.quadraticBezierTo(size.width * 0.7, size.height * 0.27,
    //    size.width * 0.7, size.height * 0.27);
    //path.quadraticBezierTo(size.width * 0.8, size.height * 0.33,
    //    size.width * 0.8, size.height * 0.33);
    //path.quadraticBezierTo(size.width * 0.9, size.height * 0.27,
    //    size.width * 0.9, size.height * 0.27);
    //path.quadraticBezierTo(size.width * 1.0, size.height * 0.25,
    //    size.width * 1.0, size.height * 0.25);
    //path.lineTo(size.width, 0);
    path.lineTo(-20, size.height * 0.22);

    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20 - 5,
        size.width, size.height * 0.27);
    path.lineTo(size.width * 1.5, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaveGradient extends StatelessWidget {
  const HeaderWaveGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color.fromRGBO(35 , 44, 51, 1),
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(100.0, 105.0), radius: 100);

    const Gradient gradiente =
        LinearGradient(begin: Alignment.topLeft, colors: [
      Color.fromARGB(255, 40, 53, 94),
      Color(0xff7455d7),

      Color(0xff28ecf8),

      //Color(0xff28ecf8),

      //Color.fromARGB(62, 40, 238, 248),
    ], stops: [
      0.5,
      0.8,
      1.0
    ]);

    final paint = Paint()..shader = gradiente.createShader(rect);

    //propiedades del "lapiz" (Paint)
    paint.color = Colors.red;
    //paint.color = const Color.fromRGBO(35 , 44, 51, 1);
    paint.style = PaintingStyle.stroke; //.fill para rellenar
    paint.strokeWidth = 3;

    final path = Path();

    // dibujar con el path y el lapiz (paint)

    //mitad de la pantalla (inicio, mitad) mas alto
    path.lineTo(-20, size.height * 0.22);

    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20,
        size.width * 0.9, size.height * 0.25 - 1);
    path.lineTo(size.width * 0.9, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
