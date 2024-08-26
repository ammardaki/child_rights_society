// ignore_for_file: must_be_immutable

import 'package:child_rights_society/model/lang.dart';
import 'package:child_rights_society/screen/login.dart';
import 'package:child_rights_society/styles/dimnation.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts_arabic/fonts.dart';import '../screen/settings_screen.dart';
import '../styles/colors.dart';

class Drawerb extends StatelessWidget {
  String name, email;
  final padding = const EdgeInsets.symmetric(horizontal: 20.0);
  Drawerb({
    super.key,
    required this.name,
    required this.email,
  });
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 220,
      elevation: 0.0,
      backgroundColor: clearColor,
      child: Stack(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 5.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
              border: Border.all(color: Colors.black12, width: 1.5),
              gradient: const LinearGradient(
                colors: [
                  // Colors.greenAccent,
                  Colors.black,
                  Colors.blueAccent,
                  Colors.blue,
                ],
                begin: Alignment.topLeft, //begin of the gradient color
                end: Alignment.bottomRight, //end of the gradient color
              ),
            ),
          ),
          Scaffold(
            backgroundColor: clearColor,
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    children: [
                      Dimanation.high15,
                      const CircleAvatar(
                        radius: 35,
                      ),
                      Dimanation.high5,
                      Text(name),
                      Dimanation.high5,
                      Text(email),
                    ],
                  ),
                ),
                Dimanation.high25,
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: ListTile(
                        leading: const Icon(
                          Icons.home,
                          color: kwhite,
                        ),
                        title: Text(
                          translation(context).homePage,
                          style: const TextStyle(
                            fontFamily: ArabicFonts.Mirza,
                            package: 'google_fonts_arabic',
                            fontSize: 18.0,
                            color: kblack,
                          ),
                        ),
                      ),
                    ),
                    // Dimanation.high25,
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return const SettingScreen(
                          
                          );
                        }));
                      },
                      child: ListTile(
                        leading: const Icon(
                          Icons.settings,
                          color: kwhite,
                        ),
                        title: Text(
                          translation(context).settings,
                          style: const TextStyle(
                            fontFamily: ArabicFonts.Mirza,
                            package: 'google_fonts_arabic',
                            fontSize: 18.0,
                            color: kblack,
                          ),
                        ),
                      ),
                    ),
                    // Dimanation.high25,
                    GestureDetector(
                      onTap: () {},
                      child: ListTile(
                        leading: const Icon(
                          Icons.help,
                          color: kwhite,
                        ),
                        title: Text(
                          translation(context).About,
                          style: const TextStyle(
                            fontFamily: ArabicFonts.Mirza,
                            package: 'google_fonts_arabic',
                            fontSize: 18.0,
                            color: kblack,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return LoginPage();
                        }));
                      },
                      child: ListTile(
                        leading: const Icon(
                          Icons.logout,
                          color: kwhite,
                        ),
                        title: Text(
                          translation(context).logout,
                          style: const TextStyle(
                            fontFamily: ArabicFonts.Mirza,
                            package: 'google_fonts_arabic',
                            fontSize: 18.0,
                            color: kblack,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
