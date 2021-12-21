import 'package:flutter/material.dart';
import 'package:foodhub/statemanagement_app/widget/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backGroundColor;
  double size;
  bool isIcon;
  final Color borderColor;
  AppButtons(
      {Key? key,
      this.icon,
      this.text,
     
      required this.color,
      required this.backGroundColor,
      required this.size,
      this.isIcon=false,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backGroundColor,

          
        ), child:  isIcon==false? Center(child: AppText(text: text!, color: color, )):Center(child: Icon(icon, color: color, )) ,);
  }
}
