// ignore_for_file: non_constant_identifier_names, import_of_legacy_library_into_null_safe, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
// ignore: import_of_legacy_library_into_null_safe

import '../styles/colors.dart';
import '../styles/textstyle.dart';

Widget TextInputSp(
        {required TextEditingController controller,
        required TextInputType textInputType,
        Widget? prif,
        required String? Function(String?)? vali,
        required Widget labely,
        TextInputAction? textInputAction,
        Widget? sufix,
        Widget? sufixIcon,
        bool obs = false,
        EdgeInsetsGeometry? paddy,
        EdgeInsetsGeometry? mary,
        EdgeInsetsGeometry? commpadd,
        double? wid,
        double? hid,
        String? hinty,
        void Function(String)? onchan,
        TextInputAction? inputAction}) =>
    Container(
      width: wid,
      height: hid,
      padding: paddy,
      margin: mary,
      child: TextFormField(
        style: TextStyle(
          color: Colors.grey[100],
          package: 'google_fonts_arabic',
          fontFamily: ArabicFonts.Amiri,
          fontSize: 18.0,
        ),
        controller: controller,
        strutStyle: const StrutStyle(
          fontWeight: FontWeight.bold,
        ),
        keyboardType: textInputType,
        textInputAction: textInputAction,
        obscureText: obs,
        validator: vali,
        onChanged: onchan,
        decoration: InputDecoration(
            hintText: hinty,
            hintStyle: nameStyle(),
            contentPadding: commpadd,
            label: labely,
            prefixIcon: prif,
            suffixIcon: sufixIcon,
            suffix: sufix,
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 3.0,
                color: bordColo,
              ),
              borderRadius: BorderRadius.circular(
                16.7,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3.0, color: bordColo),
              borderRadius: BorderRadius.circular(
                16.7,
              ),
            )),
      ),
    );
