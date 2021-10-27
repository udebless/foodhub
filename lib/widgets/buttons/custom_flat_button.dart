import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? imageIcon;

  final String buttonName;
  final Function()? onPressed;
  const CustomFlatButton({
    Key? key,
    this.width,
    required this.buttonName,
    this.onPressed,
    this.height,
    this.imageIcon,
    // required this.imageIcon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imageIcon != null) imageIcon!,
            Text(buttonName),
          ],
        ),
        style: TextButton.styleFrom(
          
          //side: BorderSide(),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.green,
          backgroundColor: Colors.green[50],
          onSurface: Colors.grey,
          textStyle: TextStyle(fontSize: 40),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
