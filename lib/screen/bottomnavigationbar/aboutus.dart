import 'package:child_rights_society/model/lang.dart';
import 'package:child_rights_society/styles/dimnation.dart';
import 'package:child_rights_society/styles/textstyle.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final inf = translation(context).infocoals;
    final prolist = translation(context).protectlist;
    final family = translation(context).familyapplist;
    final education = translation(context).eduapplist;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(135, 206, 235, 1),
          Color.fromRGBO(0, 255, 255, 1),
          Color.fromRGBO(152, 251, 152, 1),
          // Color.fromRGBO(203, 192, 255, 1),
        ]),
      ),
      child: Scaffold(
        backgroundColor: clearColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Image(
                image: AssetImage(
                  "assets/images/logo.png",
                ),
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 1.2,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          translation(context).DateStr,
                          textAlign: TextAlign.center,
                          style: appStyle,
                        ),
                      ),
                      Dimanation.high10,
                      Text(
                        translation(context).version,
                        style: subTitleStyle(23),
                      ),
                      Dimanation.high5,
                      Text(
                        translation(context).verInfo,
                        style: appStyle,
                      ),
                      Dimanation.high10,
                      Text(
                        translation(context).coals,
                        // textAlign: TextAlign.end,
                        style: subTitleStyle(23),
                      ),
                      Dimanation.high5,
                      SingleChildScrollView(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: inf.length,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    inf[index],
                                    style: appStyle,
                                  ),
                                ],
                              );
                            }),
                      ),
                      Dimanation.high10,
                      Text(
                        translation(context).Ourprojects,
                        style: subTitleStyle(
                          23,
                        ),
                      ),
                      Text(
                        translation(context).protectapp,
                        style: subTitleStyle(19),
                      ),
                      Text(
                        translation(context).proinfo,
                        textAlign: TextAlign.justify,
                        style: appStyle,
                      ),
                      Dimanation.high5,
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: prolist.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  prolist[index],
                                  style: appStyle,
                                ),
                              ],
                            );
                          }),
                      Dimanation.high10,
                      Text(
                        translation(context).familyapp,
                        style: subTitleStyle(19),
                      ),
                      Text(
                        translation(context).familyapinfo,
                        textAlign: TextAlign.justify,
                        style: appStyle,
                      ),
                      Dimanation.high5,
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: family.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  family[index],
                                  style: appStyle,
                                ),
                              ],
                            );
                          }),
                      Dimanation.high10,
                      Text(
                        translation(context).eduapp,
                        style: subTitleStyle(19),
                      ),
                      Text(
                        translation(context).eduappinfo,
                        textAlign: TextAlign.justify,
                        style: appStyle,
                      ),
                      Dimanation.high5,
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: education.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  education[index],
                                  style: appStyle,
                                ),
                              ],
                            );
                          }),
                      Dimanation.high10,
                      Text(
                        translation(context).healthapp,
                        style: subTitleStyle(19),
                      ),
                      Text(
                        translation(context).healthappinfo,
                        textAlign: TextAlign.justify,
                        style: appStyle,
                      ),
                      Dimanation.high5,
                      Text(
                        translation(context).healthapplist,
                        style: appStyle,
                      ),
                      Dimanation.high10,
                      Text(
                        translation(context).envoapp,
                        style: subTitleStyle(19),
                      ),
                      Text(
                        translation(context).envoappinfo,
                        textAlign: TextAlign.justify,
                        style: appStyle,
                      ),
                      Dimanation.high5,
                      Text(
                        translation(context).envlist,
                        style: appStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
