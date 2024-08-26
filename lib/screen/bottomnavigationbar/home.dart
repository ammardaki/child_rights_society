import 'package:child_rights_society/model/actionsforkid.dart';
import 'package:flutter/material.dart';
import '../../Component/background_base.dart';
import '../../Component/detialis/actioncard.dart';
import '../detailscreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundbase(),
        ListView.builder(
          itemCount: actionscrs.length,
          itemBuilder: (context, index) => ActionCard(
            itemIndex: index,
            actionki: actionscrs[index],
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return DetailsAction(
                  actionsCrs: actionscrs[index],
                  i: index,
                );
              }));
            },
          ),
        ),
      ],
    );
  }
}
