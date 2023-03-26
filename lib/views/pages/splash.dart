import 'dart:async';

import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        seconds: 2,
      ),
      () {
        Navigator.of(context).pushNamed(RouteNames.onboarding);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPalette.primaryBlue,
      body: SizedBox(
        child: Center(
          child: Text(
            "coinswapr",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              height: 1.27,
              color: ColorPalette.primaryWhite,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
