import 'package:child_rights_society/l10n/L10n.dart';
import 'package:child_rights_society/utiles/LocalizationProvider.dart';

import 'package:child_rights_society/utiles/localprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../model/actionsforkid.dart';
const String homeRoute = "home";
const String aboutRoute = "about";
const String settingsRoute = "settings";

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});



  @override
  Widget build(BuildContext context) {
        final localization = Provider.of<LocalizationProvider>(context);

    var actions = AppLocalizations.of(context)!.actions;
     
      return Stack(
        children: [
          Scaffold(
              appBar: AppBar(
                  leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopupMenuButton<Locale>(
                  icon: const Icon(
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
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList();
                  },
                ),
              )),
              body: Center(
                child: ListView.builder(
                    itemCount: actionscrs.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Text(actions[index].subTitle ?? "hh"),
                          // Text(translation(context).localizedStrings[index]),
Text(localization.translate('Goodbye')),
],
                      );
                      // subtitle: Text(AppLocalizations.of(context)!.translate(index)),
                    }),
              )),
              
        ],
      )
    ;
  }
}
