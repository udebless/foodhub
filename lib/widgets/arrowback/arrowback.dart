import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomArrowBack extends StatelessWidget {
  final IconData ? arrowIcon;
  const CustomArrowBack({Key? key,  this.arrowIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(arrowIcon);
  }
}
