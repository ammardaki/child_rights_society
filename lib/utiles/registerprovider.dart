import 'package:flutter/material.dart';

Proregister objec = Proregister();

class Proregister extends ChangeNotifier {
  bool passy = true;
  final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController conpassController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final formkeyre = GlobalKey<FormState>();
    final myGlobalKey = GlobalKey<FormState>();
  static final RegExp alphaExp = RegExp('[a-zA-Zا-ي]');
  showPassregy() {
    passy = !passy;
    notifyListeners();
  }

  var valUser = (value) => value.isEmpty
      ? 'أكتب الاسم من فضلك'
      : (alphaExp.hasMatch(value) ? null : "الأحرف فقط مسموحة");

  var valiemail = ((value) {
    if (value == null ||
        value.isEmpty ||
        !value.contains('@') ||
        !value.contains('.')) {
      return 'أدخل البريد الالكتروني ';
    }
    return null;
  });
  var validpass = (value) {
    if (value.isEmpty) {
      return 'من فضلك أدخل كلمة المرور';
    } else if (value.length < 6) {
      return 'اقل من 6 محارف';
    }
    return null;
  };
  var validConpass = (value) {
    if (value.isEmpty) {
      return 'من فضلك أدخل كلمة المرور';
    } else if (value.length < 6) {
      return 'اقل من 6 محارف';
    }
    return null;
  };
  var validateMobile = (value) {
    if (value.length != 10) {
      return 'رقم الهاتف عشر أرقام ';
    } else {
      return null;
    }
  };
}
