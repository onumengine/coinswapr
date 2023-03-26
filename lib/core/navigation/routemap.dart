import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/views/pages/confirm_otp.dart';
import 'package:coinswapr/views/pages/get_started.dart';
import 'package:coinswapr/views/pages/onboarding.dart';
import 'package:coinswapr/views/pages/splash.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routeMap = {
  RouteNames.splash: (_) => const SplashScreen(),
  RouteNames.onboarding: (_) => const Onboarding(),
  RouteNames.getStarted: (_) => const GetStarted(),
  RouteNames.confirmOTP: (_) => const ConfirmOTP(),
};