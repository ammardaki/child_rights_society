import 'package:child_rights_society/styles/textstyle.dart';
import 'package:flutter/material.dart';


class SettingsTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String? tithint;
 
  const SettingsTile(
      {Key? key,
      required this.color,
      required this.icon,
      required this.title,

      this.tithint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: obutton,
        ),
        // const Spacer(),
      
      ],
    );
  }
}
