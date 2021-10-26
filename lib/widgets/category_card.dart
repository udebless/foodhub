import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryText;
  const CategoryCard({Key? key, required this.categoryText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
       shadowColor: Colors.green[100],
      elevation: 8,
      margin: EdgeInsets.all(20),
      color:Colors.green[100],
      child: Container(
        height: 200,
        width: 200,
        child: Center(child: Text(categoryText, style: TextStyle(color:Colors.teal , fontSize: 30,fontWeight: FontWeight.w700),)),
      ),
    );
  }
}
