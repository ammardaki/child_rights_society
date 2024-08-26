import 'package:child_rights_society/model/lang.dart';
import 'package:flutter/material.dart';

class Prologin extends ChangeNotifier {
  bool pass = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  
  final formKey = GlobalKey<FormState>();
  showPass() {
    pass = !pass;
    notifyListeners();
  }

  var valiname = (p0,context) {
    if (p0 == null || p0.isEmpty) {
      return translation(context).hintname;
    }
    return null;
  };
  
  var valiemail = (value,) {
    if (value == null ||
        value.isEmpty ||
        !value.contains('@') ||
        !value.contains('.')) {
      return 'أدخل البريد الالكتروني ';
    }
    return null;
  };
  var validpass = (value) {
    if (value.isEmpty) {
      return 'من فضلك أدخل كلمة المرور';
    } else if (value.length < 6) {
      return 'اقل من 6 محارف';
    }
    return null;
  };
}
