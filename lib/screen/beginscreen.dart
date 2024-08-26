import 'package:child_rights_society/styles/dimnation.dart';
import 'package:flutter/material.dart';
import 'package:child_rights_society/Component/background_base.dart';
import '../styles/colors.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacementNamed("login");
    });
    return Stack(
      children: [
        backgroundbase(),
        Scaffold(
          backgroundColor: clearColor,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: clearColor,
          ),
          body: Center(
            child: Column(
              children: [
                const Flexible(
                  child: Image(
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                    width: 550,
                    height: 500,
                  ),
                ),
                Dimanation.high15,
               const CircularProgressIndicator(),
                Dimanation.high10
              ],
            ),
          ),
        )
      ],
    );
  }
}
