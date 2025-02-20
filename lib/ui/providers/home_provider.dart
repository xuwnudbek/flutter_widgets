import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
  }
}
