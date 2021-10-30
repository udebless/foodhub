import 'package:flutter/material.dart';

class CustomCheckButton extends StatelessWidget {
  final bool selected;
  final Function(bool) onChanged;
  final bool isCircular;
  const CustomCheckButton(
      {Key? key,
      this.selected = false,
      required this.onChanged,
      this.isCircular = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(selected
            ? isCircular
                ? Icons.radio_button_checked
                : Icons.check_box_outline_blank
            :isCircular? Icons.radio_button_unchecked: Icons.check_box, color: Colors.green, ),
        onPressed: () {
          onChanged.call(!selected);
        });
  }
}
