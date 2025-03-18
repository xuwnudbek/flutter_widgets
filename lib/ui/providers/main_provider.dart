import 'package:flutter/material.dart';
import 'package:flutter_widgets/services/storage_service.dart';

class MainProvider extends ChangeNotifier {
  ThemeMode _themeMode = StorageService.getThemeMode();
  ThemeMode get themeMode => _themeMode;
  set themeMode(ThemeMode value) {
    _themeMode = value;
    notifyListeners();

    switch (_themeMode) {
      case ThemeMode.light:
        StorageService.write("themeMode", "light");
        break;
      case ThemeMode.dark:
        StorageService.write("themeMode", "dark");
        break;
      default:
        StorageService.write("themeMode", "system");
        break;
    }
  }
}
