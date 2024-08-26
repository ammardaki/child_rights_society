// ignore_for_file: must_be_immutable, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:child_rights_society/Component/background_base.dart';
import 'package:child_rights_society/l10n/L10n.dart';
import 'package:child_rights_society/model/lang.dart';
import 'package:child_rights_society/model/language.dart';
import 'package:child_rights_society/styles/colors.dart';
import 'package:child_rights_society/styles/textstyle.dart';
import 'package:child_rights_society/utiles/selectindex.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts_arabic/fonts.dart';
import 'package:provider/provider.dart';
import '../Component/drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../main.dart';
import '../utiles/localprovider.dart';

class HomePage extends StatelessWidget {
  String name;
  String email;
  HomePage({
    super.key,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    // Locale(Language.languageList().toString());

    var provider = Provider.of<SelectIndexBottom>(context);
    return Stack(children: [
      backgroundbase(),
      Scaffold(
        backgroundColor: clearColor,
        appBar: AppBar(
            title: Text(
              translation(context).CRC,
              style: TextStyle(
                  fontFamily: ArabicFonts.Amiri,
                  package: 'google_fonts_arabic',
                  fontSize: 20.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
            elevation: 0.0,
            backgroundColor: clearColor,
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopupMenuButton<Locale>(
                  icon: Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  color: Colors.blue,
                  onSelected: (Locale locale) {
                    final providers =
                        Provider.of<LocaleProvider>(context, listen: false);
                    providers.setLocale(locale);
                  },
                  itemBuilder: (BuildContext context) {
                    return L10n.all.map((Locale locale) {
                      return PopupMenuItem<Locale>(
                        value: locale,
                        child: Text(
                          locale.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList();
                  },
                ),
              )
            ]),
        drawer: Drawerb(
          name: name,
          email: email,
        ),
        body: provider.screens[provider.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          selectedLabelStyle: const TextStyle(
            fontFamily: ArabicFonts.Mirza,
            package: 'google_fonts_arabic',
            fontSize: 18.0,
            color: kblack,
          ),
          selectedItemColor: kblack,
          unselectedItemColor: kwhite,
          unselectedLabelStyle: const TextStyle(
            fontFamily: ArabicFonts.Mirza,
            package: 'google_fonts_arabic',
            fontSize: 18,
            color: kwhite,
          ),
          backgroundColor: clearColor,
          currentIndex: provider.currentIndex,
          onTap: (index) {
            provider.currentIndex = index;
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
              ),
              label: translation(context).homePage,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.info,
              ),
              label: translation(context).About,
            ),
          ],
        ),
      )
    ]);
  }
}
