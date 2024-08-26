// ignore_for_file: prefer_const_constructors, use_build_contimport 'package:flutter_gen/gen_l10n/app_localizations.dart';
ext_synchronously, no_leading_underscores_for_local_identifiers, unused_import

import 'package:child_rights_society/Component/text_input_type.dart';
import 'package:child_rights_society/l10n/L10n.dart';
import 'package:child_rights_society/model/lang.dart';
import 'package:child_rights_society/router/route_constans.dart';
import 'package:child_rights_society/screen/forgetpass.dart';
import 'package:child_rights_society/utiles/localprovider.dart';
import 'package:child_rights_society/utiles/loginprovider.dart';
import 'package:child_rights_society/screen/register.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../Component/background_image.dart';
import '../styles/border.dart';
import '../styles/colors.dart';
import '../styles/dimnation.dart';
import '../styles/textstyle.dart';

// late int index=0;

// int get currentIndex => index;

// set currentIndex(int index) {
//   index = index;

// }

class LoginPage extends StatelessWidget {
  final formkey = GlobalKey<FormState>();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var englishText = AppLocalizations.of(context)!.english;
    var arabicText = AppLocalizations.of(context)!.arabic;
    final login = Provider.of<Prologin>(context);
    // Size size = MediaQuery.of(context).size;
    return Center(
      child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formkey,
            child: Stack(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.black54, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ).createShader(bounds),
                ),
                // Container(),
                const BackgroundImage(
                  image: "assets/images/bag.jpg",
                ),
                Scaffold(
                  appBar: AppBar(
                      backgroundColor: clearColor,
                      elevation: 0.0,
                      leading: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: PopupMenuButton<Locale>(
                            icon: Icon(
                              Icons.language,
                              color: Colors.white,
                            ),
                            color: Colors.blue,
                            onSelected: (Locale locale) {
                              final providers = Provider.of<LocaleProvider>(
                                  context,
                                  listen: false);
                              providers.setLocale(locale);
                            },
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  value: Locale('en'),
                                  child: Center(
                                    child: Text(
                                      englishText,
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                  value: Locale('ar'),
                                  child: Center(
                                    child: Text(
                                      arabicText,
                                      style: subTitleStyle(14),
                                    ),
                                  ),
                                )
                              ];
                            }),
                      )),
                  backgroundColor: Colors.transparent,
                  body: Column(
                    children: <Widget>[
                      const Flexible(
                        child: Center(
                          child: Image(
                            image: AssetImage(
                              "assets/images/logo.png",
                            ),
                            width: 350,
                            height: 300,
                          ),
                        ),
                      ),
                      TextInputSp(
                        controller: login.emailController,

                        textInputType: TextInputType.name,
                        mary: EdgeInsets.all(10),
                        prif: Icon(
                          Icons.email,
                          color: iconColo,
                        ),
                        vali: login.valiemail,
                        // paddy: EdgeInsets.all(10.00),
                        commpadd: EdgeInsets.all(10.0),
                        labely: Text(
                          translation(context).email,
                          style: b,
                        ),

                        inputAction: TextInputAction.next,
                      ),
                      Dimanation.high10,
                      TextInputSp(
                        controller: login.passController,
                        textInputType: TextInputType.visiblePassword,
                        mary: EdgeInsets.all(
                          10.0,
                        ),
                        commpadd: EdgeInsets.all(
                          10.0,
                        ),
                        obs: login.pass,
                        sufix: IconButton(
                          onPressed: () {
                            login.showPass();
                          },
                          icon: Icon(
                            login.pass
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        prif: Icon(
                          Icons.lock,
                          color: iconColo,
                        ),
                        vali: login.validpass,
                        labely: Text(
                          translation(context).password,
                          style: b,
                        ),
                        inputAction: TextInputAction.done,
                      ),
                      Dimanation.high10,
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Dimanation.width8,
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return ForgetPass();
                              }));
                            },
                            child: Text(
                              translation(context).forgetpassword,
                              style: regs,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Dimanation.high15,
                      GestureDetector(
                        onTap: () {
                          print("heeee");
                        },
                        child: Container(
                          width: 150,
                          height: 45,
                          decoration: contButton,
                          child: Center(
                            child: Text(
                              translation(context).signin,
                              style: logreg,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              translation(context).IdontHaveAccount,
                              style: textregs,
                            ),
                            Dimanation.width8,
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => Register(),
                                    ));
                              },
                              child: Text(
                                translation(context).signup,
                                style: regs,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Dimanation.high15,
                      // Dimanation.width8,
                      // InkWell(
                      //     onTap: () {
                      //       Navigator.of(context).push(
                      //           MaterialPageRoute(builder: (_) => MyWidget()));
                      //     },
                      //     child: Text("data"))
                    ],
                  ),
                ),
              ],
            )));
      }
    
  }

