import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFields extends StatefulWidget {
  final TextEditingController controller;
  final Icon? customIcons;
  final String? fieldText;
  final double? width;
  final Color? fillCollor;
  const CustomTextFields(
      {Key? key,
      required this.controller,
      this.customIcons,
      this.fieldText,
      this.width,
      this.fillCollor})
      : super(key: key);

  @override
  _CustomTextFieldsState createState() => _CustomTextFieldsState();
}

class _CustomTextFieldsState extends State<CustomTextFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.fieldText != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.fieldText!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        SizedBox(
          width: widget.width,
          child: Container(
            width: MediaQuery.of(context).size.width - 60,
            child: TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                  fillColor:widget.fillCollor ,
                  filled: true,
                  suffixIcon: widget.customIcons,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      //borderSide: BorderSide(width: 5, color: Colors.red)
                      )),
            ),
          ),
        ),
      ],
    );
  }
}
