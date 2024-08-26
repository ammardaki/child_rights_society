// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

import 'colors.dart';

TextStyle appbarStyle = const TextStyle(
  fontFamily: ArabicFonts.Scheherazade,
  package: 'google_fonts_arabic',
  fontWeight: FontWeight.bold,
  color: kblack,
  fontSize: 18.0,
);
TextStyle appStyle = const TextStyle(
  fontFamily: ArabicFonts.Scheherazade,
  package: 'google_fonts_arabic',
  fontWeight: FontWeight.bold,
  color: kblack,
  fontSize: 18.0,
);
TextStyle apStyle = const TextStyle(
  fontFamily: ArabicFonts.Scheherazade,
  package: 'google_fonts_arabic',
  fontWeight: FontWeight.bold,
  color: kblack,
  fontSize: 25.0,
);
TextStyle b = const TextStyle(
  fontFamily: ArabicFonts.Amiri,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 135, 149, 224),
  package: 'google_fonts_arabic',
  fontSize: 25.0,
);
TextStyle obutton = const TextStyle(
  fontFamily: ArabicFonts.Mirza,
  package: 'google_fonts_arabic',
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

TextStyle regs = const TextStyle(
    fontFamily: ArabicFonts.Mirza,
    package: 'google_fonts_arabic',
    fontSize: 25.0,
    color: Colors.blueAccent,
    fontWeight: FontWeight.bold);
TextStyle textregs = const TextStyle(
    fontFamily: ArabicFonts.Mirza,
    package: 'google_fonts_arabic',
    fontSize: 25.0,
    color: kwhite,
    fontWeight: FontWeight.bold);
const TextStyle bodytext = TextStyle(
    fontFamily: ArabicFonts.Mirza,
    package: 'google_fonts_arabic',
    fontSize: 24.0,
    color: Colors.white,
    fontWeight: FontWeight.bold);
var sendcode = TextStyle(
    fontFamily: ArabicFonts.Mirza,
    package: 'google_fonts_arabic',
    fontSize: 20.0,
    color: kwhite,
    fontWeight: FontWeight.bold);

TextStyle logreg = const TextStyle(
        fontFamily: ArabicFonts.Mirza,
        package: 'google_fonts_arabic',
        fontSize: 25.0,
        color: kwhite,
        fontWeight: FontWeight.bold)
    .copyWith(fontWeight: FontWeight.bold);
TextStyle nameStyle() {
  return const TextStyle(
    fontFamily: ArabicFonts.Katibeh,
    color: Colors.indigo,
    fontWeight: FontWeight.bold,
    package: 'google_fonts_arabic',
    fontSize: 25.0,
  );
}

TextStyle? subTitleStyle(double? size) {
  return TextStyle(
    fontFamily: ArabicFonts.Amiri,
    package: 'google_fonts_arabic',
    fontWeight: FontWeight.bold,
    color: kblack,
  );
}

const kDefaultPadding = 20.0;
Decoration gontButton = (BoxDecoration(
  color: const Color.fromRGBO(12, 192, 223, 1),
  borderRadius: BorderRadius.circular(
    15.0,
  ),
));
