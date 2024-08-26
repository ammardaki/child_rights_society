import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/textstyle.dart';

class TextInputForm extends StatelessWidget {
  final IconData fonticon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  const TextInputForm(
      {super.key,
      required this.fonticon,
      required this.hint,
      required this.inputType,
      required this.inputAction});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: size.width*0.8,
        height: size.height*0.08,

        decoration: BoxDecoration(
          color: Colors.grey[500]!.withOpacity(
            0.5,
          ),
          borderRadius: BorderRadius.circular(
            16.0,
          ),
        ),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Icon(
                  fonticon,
                  size: 28.0,
                  color: kwhite,
                ),
              ),
              hintText: hint,
              hintStyle: bodytext,
            ),
            style: bodytext,
            keyboardType: TextInputType.emailAddress,
 
          ),
        ),
      ),
    );
  }
}
