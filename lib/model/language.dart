// class Language {
//   final int id;
//   final String name;
//   final String languageCode;

//   Language(this.id, this.name, this.languageCode);

//   static List<Language> languageList() {
//     return <Language>[
      
//       Language(1, "اَلْعَرَبِيَّةُ", "ar"),
//       Language(2,  "English", "en"),
   
//     ];
//   }
// }
import 'package:flutter/material.dart';

class Localization {
  final Map<String, String> translations;
  final BuildContext context;

  Localization({required this.translations, required this.context});

  String translate(String key) {
    return translations[key] ?? key;
  }
}




















































// import 'package:flutter/material.dart';


// class Language extends ChangeNotifier {
//   String _lang = "language";
//   getLanguage() {
//     return _lang;
//   }

//   setLanguage(String lang) {
//     _lang = lang;
//     notifyListeners();
//   }
// tname() {
//     if (getLanguage() == 'ar') {
//       return "الاسم";
//     } else if (getLanguage() == 'en') {
//       return "name";
//     }
//   }
//   temail() {
//     if (getLanguage() == 'ar') {
//       return "البريد الالكتروني";
//     } else if (getLanguage() == 'en') {
//       return "email";
//     }
//   }
//      tpassword() {
//     if (getLanguage() == 'ar') {
//       return "كلمة المرور";
//     } else if (getLanguage() == 'en') {
//       return "password";
//     }
//     }
//      tforgetpassword() {
//     if (getLanguage() == 'ar') {
//       return "نسيت كلمة المرور";
//     } else if (getLanguage() == 'en') {
//       return "Forget Password";
//     }
//     }
//    tsignin() {
//     if (getLanguage() == 'ar') {
//       return  "تسجيل الدخول";
//     } else if (getLanguage() == 'en') {
//       return "signIn";
//     }
//     }
//   tsignup() {
//     if (getLanguage() == 'ar') {
//       return "تسجيل";
//     } else if (getLanguage() == 'en') {
//       return "signup";
//     }
//     }
//   tnoaccount() {
//     if (getLanguage() == 'ar') {
//       return "ليس لدي حساب ";
//     } else if (getLanguage() == 'en') {
//       return "I don't have an account";
//     }
//     }
//     tconpassword() {
//     if (getLanguage() == 'ar') {
//       return "تأكيد كلمة المرور";
//     } else if (getLanguage() == 'en') {
//       return "ConfirmPassword";
//     }
//     }
//      tphone() {
//     if (getLanguage() == 'ar') {
//       return  "رقم الهاتف";
//     } else if (getLanguage() == 'en') {
//       return "phonenumber";
//     }
//     }
//     taccount() {
//     if (getLanguage() == 'ar') {
//       return "لدي حساب بالفعل";
//     } else if (getLanguage() == 'en') {
//       return "already have account";
//     }
//     }
//      thome() {
//     if (getLanguage() == 'ar') {
//       return  "الصفحة الرئيسية";
//     } else if (getLanguage() == 'en') {
//       return "home";
//     }
//     }
//      tsettings() {
//     if (getLanguage() == 'ar') {
//       return "الاعدادات";
//     } else if (getLanguage() == 'en') {
//       return "setting";
//     }
//     }
//      tabout() {
//     if (getLanguage() == 'ar') {
//       return "حول التطبيق";
//     } else if (getLanguage() == 'en') {
//       return "about us";
//     }
//     }
//      tlogout() {
//     if (getLanguage() == 'ar') {
//       return "تسجيل الخروج";
//     } else if (getLanguage() == 'en') {
//       return "logout";
//     }
//     }
//      tinputphone() {
//     if (getLanguage() == 'ar') {
//       return "أدخل رقم الهاتف";
//     } else if (getLanguage() == 'en') {
//       return "Enter phone number";
//     }
//     }
//        sCode() {
//     if (getLanguage() == 'ar') {
//       return '(30s)أرسل الكود';
//     } else if (getLanguage() == 'en') {
//       return "Send code(30s)";
//     }
//     }
//      code() {
//     if (getLanguage() == 'ar') {
//       return 'الكود';
//     } else if (getLanguage() == 'en') {
//       return "Code";
//     }
//     }
//      setPassword() {
//     if (getLanguage() == 'ar') {
//       return 'تعيين كلمة المرور الجديدة';
//     } else if (getLanguage() == 'en') {
//       return "Set New Password";
//     }
//     }
//      ConsetPassword() {
//     if (getLanguage() == 'ar') {
//       return 'تأكيد كلمة المرور الجديدة';
//     } else if (getLanguage() == 'en') {
//       return "Confirm New Password";
//     }
//     }
//   }

//   // "email": "البريد الالكتروني",
//   // "password": "كلمة المرور",
//   // "forgetpassword": "نسيت كلمة المرور",
//   // "signIn": "تسجيل الدخول",
//   // "signup": "تسجيل",
//   // "I don't have an account": "ليس لدي حساب ",
//   // "confirmpassword": "تأكيد كلمة المرور",
//   // "phonenumber": "رقم الهاتف",
//   // "already have account": "لدي حساب بالفعل",
//   // "home": "الصفحة الرئيسية",
//   // "setting": "الاعدادات",
//   // "about us": "حول التطبيق",
//   // "logout": "تسجيل الخروج"
