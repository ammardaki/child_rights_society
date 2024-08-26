// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:child_rights_society/Component/background_base.dart';
import 'package:child_rights_society/model/lang.dart';
import 'package:child_rights_society/screen/screensettings/settingtitle.dart';
import 'package:child_rights_society/styles/colors.dart';
import 'package:child_rights_society/styles/textstyle.dart';
import 'package:child_rights_society/utiles/localprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var englishText = AppLocalizations.of(context)!.english;
    var arabicText = AppLocalizations.of(context)!.arabic;
    Locale selectedLocale = const Locale(LAGUAGE_CODE);


    return Flexible(
      child: Stack(
        children: [
          backgroundbase(),
          Scaffold(
            backgroundColor: clearColor,
            body: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        Text(translation(context).settings,
                            style: const TextStyle(
                                fontFamily: ArabicFonts.Amiri,
                                package: 'google_fonts_arabic',
                                fontWeight: FontWeight.bold,
                                color: kblack,
                                fontSize: 30)),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        SettingsTile(
                          color: Colors.blue,
                          icon: Ionicons.person_circle_outline,
                          title: translation(context).Account,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                            ),
                            width: 50,
                            height: 50,
                            child: const Center(
                              child: Icon(
                                Ionicons.arrow_forward,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SettingsTile(
                          color: Colors.green,
                          icon: Ionicons.pencil_outline,
                          title: translation(context).Editinfo,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                            ),
                            width: 50,
                            height: 50,
                            child: const Center(
                              child: Icon(
                                Ionicons.arrow_forward,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SettingsTile(
                          color: Colors.purple,
                          icon: Ionicons.language_outline,
                          title: translation(context).language,
                        ),
                        const Spacer(),
                        DropdownButton(
                          // value: selectedLocale,
                          focusColor: Colors.transparent,
                          dropdownColor: kwhite,
                          menuMaxHeight: 150,
                          underline: Container(),
                          style: apStyle,
                          alignment: Alignment.center,
                          onTap: () {
                            Locale? locale;
                            final providers = Provider.of<LocaleProvider>(
                                context,
                                listen: false);
                            if (locale != null) {
                              providers.setLocale(locale);
                            }
                            providers.setLocale(
                                locale ?? const Locale(LAGUAGE_CODE));
                            // providers.setLocale(locale!);
                          },
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          elevation: 0,
                          hint: Center(
                            child: Text(translation(context).choselang),
                          ),
                          items: [
                            DropdownMenuItem(
                              value: const Locale(
                                "en",
                              ),
                              child: Center(
                                child: Text(englishText),
                              ),
                            ),
                            DropdownMenuItem(
                              value: const Locale(
                                "ar",
                              ),
                              child: Center(
                                child: Text(arabicText),
                              ),
                            ),
                          ],
                          onChanged: (Locale? locale) {
                            final providers = Provider.of<LocaleProvider>(
                                context,
                                listen: false);
                            providers.setLocale(locale!);
                            selectedLocale == locale;
                          },
                        ),

                        // PopupMenuButton<Locale>(
                        //     icon: Icon(
                        //       Icons.language,
                        //       color: Colors.white,
                        //     ),
                        //     color: Colors.blue,
                        //     onSelected: (Locale locale) {
                        //       final providers = Provider.of<LocaleProvider>(
                        //           context,
                        //           listen: false);
                        //       providers.setLocale(locale);
                        //     },
                        //     itemBuilder: (context) {
                        //       return [
                        //         PopupMenuItem(
                        //           value: Locale('en'),
                        //           child: Center(
                        //             child: Text(
                        //               englishText,
                        //             ),
                        //           ),
                        //         ),
                        //         PopupMenuItem(
                        //           value: Locale('ar'),
                        //           child: Center(
                        //             child: Text(
                        //               arabicText,
                        //               style: subTitleStyle(14),
                        //             ),
                        //           ),
                        //         )
                        //       ];
                        //     }),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(children: [
                      SettingsTile(
                        color: Colors.blue,
                        icon: Ionicons.code,
                        title: translation(context).aboutdevlop,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(
                              15.0,
                            ),
                          ),
                          width: 50,
                          height: 50,
                          child: const Center(
                            child: Icon(
                              Ionicons.arrow_forward,
                            ),
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SettingsTile(
                          color: Colors.red,
                          icon: Ionicons.log_out_outline,
                          title: translation(context).logout,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                            ),
                            width: 50,
                            height: 50,
                            child: const Center(
                              child: Icon(
                                Ionicons.arrow_forward,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// onTap: () {
//                       showDialog(
//                           context: context,
//                           builder: (context) {
//                             return CupertinoAlertDialog(
//                               title: Text("Success"),
//                               actions: dialogActions,
//                               content: Text("Saved successfully"),
//                             );

//                           });
//                     }
