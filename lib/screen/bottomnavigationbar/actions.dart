import 'package:flutter/material.dart';

import '../../Component/background_base.dart';
import '../../styles/colors.dart';
class Actionki extends StatelessWidget {
  const Actionki({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundbase(),
        const Scaffold(
            backgroundColor: clearColor,
          body:Center(child: Text("mm")) ,
        ),
      ],
    );
  }
}