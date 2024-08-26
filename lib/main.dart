// ignore_for_file: import_of_legacy_library_into_null_safe, depend_on_referenced_packages

import 'package:child_rights_society/screen/homescreen.dart';
import 'package:child_rights_society/screen/login.dart';
import 'package:child_rights_society/utiles/forgetprovider.dart';
import 'package:child_rights_society/utiles/localprovider.dart';
import 'package:child_rights_society/utiles/loginprovider.dart';
import 'package:child_rights_society/utiles/registerprovider.dart';
import 'package:child_rights_society/utiles/selectindex.dart';
import 'package:child_rights_society/utiles/themeprovider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'l10n/L10n.dart';
import 'screen/beginscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Prologin()),
        ChangeNotifierProvider(create: (_) => Proregister()),
        ChangeNotifierProvider(create: (_) => Proforget()),
        ChangeNotifierProvider(create: (_) => SelectIndexBottom()),
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => Themeprovider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LocaleProvider>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: themey.theme,
        supportedLocales: L10n.all,
        localizationsDelegates: [
          AppLocalizations.delegate,
          AppLocalizations.localizationsDelegates[1],
          AppLocalizations.localizationsDelegates[2],
          AppLocalizations.localizationsDelegates[3],
        ],
        locale: lang.locale,
        initialRoute: "/",
        routes: {
          "/":(context) => const BeginScreen(),
          "login":(context) => LoginPage(),
          "homepage":(context) => HomePage(name: "l", email: "email")
        },
        // home: BeginScreen()
        // HomePage(
        //   name: "j",
        //   email: "ddd",
        // ),
        // LoginPage()
        );
  }
}
