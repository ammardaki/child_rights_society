// ignore_for_file: must_be_immutable, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../model/actionsforkid.dart';
import '../../styles/textstyle.dart';

class ActionCard extends StatelessWidget {
  ActionCard({
    super.key,
    required this.itemIndex,
    this.press,
    required this.actionki,
  });
  final int itemIndex;

  ActionsCrs actionki;

  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    var actions = AppLocalizations.of(context)!.actions;

    Size size = MediaQuery.of(context).size;
// var images = Images();
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 10,
      ),
      height: 190.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12),
                ],
              ),
            ),
            Positioned(
              top: 42.0,
              left: 15.0,
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 130.0,
                width: 170.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(
                        // Images().famillies.imageLists[0].images[0]
                        actionki.image!,
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: -15.0,
              child: SizedBox(
                height: 136.0,
                // Because oure image is 200 width, then: width - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Column(
                        children: [
                          Text(
                            actions[itemIndex].subTitle ?? '',
                            style: subTitleStyle(14),
                          ),
                        ],
                      ),
                    ),
                    // const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Text(
                          actions[itemIndex].description!,
                          maxLines: 2,
                          style: const TextStyle(
                            fontFamily: ArabicFonts.Rakkas,
                            package: 'google_fonts_arabic',
                            fontSize: 13.0,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
