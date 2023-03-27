import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/navigation/routemap.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/views/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoinsSwapr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: ColorPalette.primaryWhite,
      ),
      home: const SplashScreen(),
      routes: routeMap,
    );
  }
}