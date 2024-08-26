import 'package:child_rights_society/screen/bottomnavigationbar/aboutus.dart';
import 'package:child_rights_society/screen/bottomnavigationbar/home.dart';
import 'package:flutter/material.dart';

class SelectIndexBottom extends ChangeNotifier {
  List<Widget> screens = [
    const Home(),
    // const Actionki(),
    const AboutUs(),
  ];
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
