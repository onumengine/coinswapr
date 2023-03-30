import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/service_locator.dart';
import 'package:coinswapr/services/notification_settings.dart';
import 'package:coinswapr/viewmodels/notif_settings_vm.dart';
import 'package:coinswapr/views/pages/coin_wallet.dart';
import 'package:coinswapr/views/pages/confirm_otp.dart';
import 'package:coinswapr/views/pages/get_started.dart';
import 'package:coinswapr/views/pages/home.dart';
import 'package:coinswapr/views/pages/notification_settings.dart';
import 'package:coinswapr/views/pages/notifications.dart';
import 'package:coinswapr/views/pages/onboarding.dart';
import 'package:coinswapr/views/pages/settings.dart';
import 'package:coinswapr/views/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Map<String, WidgetBuilder> routeMap = {
  RouteNames.splash: (_) => const SplashScreen(),
  RouteNames.onboarding: (_) => const Onboarding(),
  RouteNames.getStarted: (_) => const GetStarted(),
  RouteNames.confirmOTP: (_) => const ConfirmOTP(),
  RouteNames.home: (_) => const HomePage(),
  RouteNames.notifications: (_) => const Notifications(),
  RouteNames.notificationSettings: (_) =>
      ChangeNotifierProvider<NotificationSettingsViewModel>(
        create: (_) => NotificationSettingsViewModel(
          notifSettingsService: serviceLocator<NotificationSettingsService>(),
        ),
        child: const NotificationSettings(),
      ),
  RouteNames.coinWallet: (_) => const CoinWallet(),
  RouteNames.settings: (_) => const Settings(),
};
