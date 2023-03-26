import 'dart:async';

import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  Key customPainterKey = GlobalKey();
  Key textKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushNamed(RouteNames.getStarted);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorPalette.primaryBlue,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: CustomPaint(
              key: customPainterKey,
              painter: OnboardingTopLayer(
                screenSize: screenSize,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                "coinswapr",
                key: textKey,
                style: const TextStyle(
                  color: ColorPalette.primaryBlue,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  height: 1.27,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingTopLayer extends CustomPainter {
  late double ovalHeight;
  Size screenSize;

  OnboardingTopLayer({this.screenSize = const Size(0, 0)}) {
    ovalHeight = screenSize.height / 9.32;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paintBrush = Paint()
      ..color = ColorPalette.primaryBlue
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromLTWH(
        0,
        0,
        screenSize.width,
        (screenSize.height * .68),
      ),
      paintBrush,
    );
    canvas.drawOval(
      Rect.fromLTWH(
        0,
        ((screenSize.height * .68) - (ovalHeight / 2)),
        screenSize.width,
        ovalHeight,
      ),
      paintBrush,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
