import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  final SharedPreferences store;

  SettingsService({
    required this.store
  });
}