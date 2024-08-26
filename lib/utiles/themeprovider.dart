import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier {
  bool value = false;

  ThemeData _theme = ThemeData.dark();
  ThemeData get theme => _theme;
  void toggle() {
    final isDark = _theme == ThemeData.dark();
    if (isDark) {
      _theme = ThemeData.light();
    } else {
      _theme = ThemeData.dark();
    }
  }
  

  bool isSwitched = false;

  void toggleSwitch() {
    isSwitched = !isSwitched;
    notifyListeners();
  }
}
