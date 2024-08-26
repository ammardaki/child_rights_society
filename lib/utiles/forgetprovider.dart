import 'package:flutter/material.dart';

class Proforget extends ChangeNotifier {
  
    bool fpass = true;
     static final RegExp numbExp = RegExp('[1-9]');
    final TextEditingController numbController = TextEditingController();
  TextEditingController fPhoneController = TextEditingController();
    final TextEditingController fpassController = TextEditingController();
      final TextEditingController fconpassController = TextEditingController();
      final formKeyForget = GlobalKey<FormState>();
        fshowPass() {
    fpass = !fpass;
    notifyListeners();
  }
    var fvaliNumb = (value) => value.isEmpty
      ? 'أكتب الرقم من فضلك'
      : (numbExp.hasMatch(value) ? null : "الارقام فقط مسموحة");
  var validateMobi = (value) {
    if (value.length != 10) {
      return 'رقم الهاتف عشر أرقام ';
    } else {
      return null;
    }
  };
  var fvalidpass = (value) {
    if (value.isEmpty) {
      return 'من فضلك أدخل كلمة المرور';
    } else if (value.length < 6) {
      return 'اقل من 6 محارف';
    }
    return null;
  };
  var fvalidConpass = (value) {
    if (value.isEmpty) {
      return 'من فضلك أدخل كلمة المرور';
    } else if (value.length < 6) {
      return 'اقل من 6 محارف';
    }
    return null;
  };
}
