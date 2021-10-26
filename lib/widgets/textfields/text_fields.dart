import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFields extends StatefulWidget {
  final TextEditingController controller;
  final Icon? customIcons;
  final String  fieldText;
  const CustomTextFields({Key? key, required this.controller, this.customIcons, required this.fieldText})
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.fieldText ,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 60,
          height: MediaQuery.of(context).size.height,
          child: TextFormField(
            controller: widget.controller,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                suffixIcon: widget.customIcons,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 5, color: Colors.red))),
          ),
        ),
      ],
    );
  }
}
