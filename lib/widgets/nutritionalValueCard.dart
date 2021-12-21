import 'package:flutter/material.dart';

class NutritionalValueCard extends StatelessWidget {
 final String title;
  final String subtitle;
  const NutritionalValueCard({Key? key, required this.subtitle, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 20),),
          Text(subtitle, style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
