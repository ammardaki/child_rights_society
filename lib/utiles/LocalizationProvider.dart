// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LocalizationProvider extends ChangeNotifier {
  Map<String, String> translations;
  Locale currentLocale;

  LocalizationProvider({required this.translations, required this.currentLocale});

  void setLocale(Locale locale) {
    currentLocale = locale;
    notifyListeners();
  }

  String translate(String key) {
    return translations[key] ?? key;
  }
}