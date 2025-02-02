// // ignore_for_file: prefer_const_constructors_in_immutables

// import 'package:flutter/material.dart';

// import '../model/set.dart';

// class SettingsItem extends StatelessWidget {
//   final IconData? icons;
//   // final icons iconStyle;
//   final String? title;
//   final TextStyle? titleStyle;
//   final String? subtitle;
//   final TextStyle? subtitleStyle;
//   final Widget? trailing;
//   final VoidCallback? onTap;
//   final Color? backgroundColor;
//   final int? titleMaxLine;
//   final int? subtitleMaxLine;
//   final TextOverflow? overflow;

//   SettingsItem(
//       {super.key,  this.icons,
//       // this.iconStyle,
//        this.title,
//       this.titleStyle,
//       this.subtitle,
//       this.subtitleStyle,
//       this.backgroundColor,
//       this.trailing,
//       this.onTap,
//       this.titleMaxLine,
//       this.subtitleMaxLine,
//       this.overflow = TextOverflow.ellipsis});

//   @override
//   Widget build(BuildContext context) {
//     return 

//        ClipRRect(
//         borderRadius: BorderRadius.circular(15),
//         child: ListTile(
//           onTap: onTap,
//           leading: (iconStyle != null && iconStyle!.withBackground!)
//               ? Container(
//                   decoration: BoxDecoration(
//                     // color: iconStyle!.backgroundColor,
//                     // borderRadius: BorderRadius.circular(
//                     //     // iconStyle!.borderRadius!,
//                     //     ),
//                   ),
//                   padding: const EdgeInsets.all(5),
//                   child: Icon(
//                     icons,
//                     size: SettingsScreenUtils.settingsGroupIconSize,
//                     // color: iconStyle!.iconsColor,
//                   ),
//                 )
//               : Padding(
//                   padding: const EdgeInsets.all(5),
//                   child: Icon(
//                     icons,
//                     size: SettingsScreenUtils.settingsGroupIconSize,
//                   ),
//                 ),
//           title: Text(
//             title??"",
//             style: titleStyle ??
//                 const TextStyle(fontWeight: FontWeight.bold),
//             maxLines: titleMaxLine,
//             overflow: titleMaxLine != null ? overflow : null,
//           ),
//           subtitle: (subtitle != null)
//               ? Text(
//                   subtitle!,
//                   style: subtitleStyle ??
//                       Theme.of(context).textTheme.bodyMedium!,
//                   maxLines: subtitleMaxLine,
//                   overflow: subtitleMaxLine != null
//                       ? TextOverflow.ellipsis
//                       : null,
//                 )
//               : null,
//           trailing: (trailing != null)
//               ? trailing
//               : const Icon(Icons.navigate_next),
//         ),
//        );
//   }
// }
