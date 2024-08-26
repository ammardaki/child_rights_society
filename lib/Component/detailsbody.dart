// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

import '../model/actionsforkid.dart';
import '../styles/colors.dart';
import '../styles/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetailsBody extends StatelessWidget {
  final int itemIndex;

  const DetailsBody({
    super.key,
    required this.itemIndex,
    required this.actionsCrs,
  });

  final ActionsCrs actionsCrs;

  @override
  Widget build(BuildContext context) {
    var actions = AppLocalizations.of(context)!.actions;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image(
            image: AssetImage(
              actionsCrs.image!,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Center(
              child: Text(
                actions[itemIndex].subTitle ?? '',
                style: const TextStyle(
                  fontFamily: ArabicFonts.Amiri,
                  package: 'google_fonts_arabic',
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: kblack,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          // padding: const EdgeInsets.symmetric(
          //   horizontal: kDefaultPadding * 1.5,
          //   vertical: kDefaultPadding / 2,
          // ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Text(
                  actions[itemIndex].description!,
                  
                  style: const TextStyle(
                    fontFamily: ArabicFonts.Rakkas,
                    package: 'google_fonts_arabic',
                    fontSize: 21.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        // const SizedBox(height: kDefaultPadding),
      ],
    );
    
  }
  
}
