// ignore_for_file: non_constant_identifier_names, import_of_legacy_library_into_null_safe

import 'package:child_rights_society/model/lang.dart';
import 'package:child_rights_society/styles/colors.dart';
import 'package:flutter/material.dart';

import '../Component/background_base.dart';
import '../Component/detailsbody.dart';
import '../model/actionsforkid.dart';
import '../styles/textstyle.dart';

class DetailsAction extends StatelessWidget {
  final ActionsCrs actionsCrs;
  final int i;
  const DetailsAction({super.key, required this.actionsCrs, required this.i});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundbase(),
        Scaffold(
          backgroundColor: clearColor,
          appBar: AppbarDetails(context),
          body: DetailsBody(
            itemIndex: i,
            actionsCrs: actionsCrs,
          ),
        )
      ],
    );
  }

  AppBar AppbarDetails(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(
          Icons.arrow_back,
          color: kblack,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      backgroundColor: clearColor,
      title: Text(
        translation(context).back,
        style: appbarStyle,
      ),
    );
  }
}
