// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:child_rights_society/l10n/L10n.dart';
import 'package:flutter/cupertino.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;
  Locale? get locale => _locale;
  var select;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }

  sety(newval) {
    select = newval;
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
