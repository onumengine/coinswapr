import 'package:coinswapr/core/navigation/routemap.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/service_locator.dart';
import 'package:coinswapr/views/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  registerDependencies();
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
        fontFamily: GoogleFonts.nunito().fontFamily,
        textTheme: TextTheme(
          caption: GoogleFonts.poppins(),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: ColorPalette.appbarText,
            fontSize: 22,
            fontFamily: GoogleFonts.nunito().fontFamily,
          ),
        ),
      ),
      home: const SplashScreen(),
      routes: routeMap,
    );
  }
}