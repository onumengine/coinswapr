import 'package:coinswapr/services/notification_settings.dart';
import 'package:coinswapr/viewmodels/notif_settings_vm.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt serviceLocator = GetIt.instance;

void registerDependencies() async {
  final prefs = await SharedPreferences.getInstance();
  serviceLocator.registerSingleton<SharedPreferences>(prefs);

  serviceLocator.registerSingleton<NotificationSettingsService>(
    NotificationSettingsService(
      store: serviceLocator(),
    ),
  );

  serviceLocator.registerFactory<NotificationSettingsViewModel>(
    () => NotificationSettingsViewModel(
      notifSettingsService: serviceLocator(),
    ),
  );
}
