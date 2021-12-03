import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  final bool selected;
  final Function(bool) onChanged;
  //final bool isUnselected;
  const Favourite({
    Key? key,
    this.selected = false,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(selected ? (Icons.favorite) : Icons.access_alarm),
        onPressed: () {
          onChanged.call(!selected);
        });
  }
}
