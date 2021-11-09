import 'package:flutter/material.dart';
import 'package:foodhub/food_hub/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({Key? key,  required  this.category}) : super(key: key);

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
        child: Center(child: Text(category.categoryText, style: TextStyle(color:Colors.teal , fontSize: 30,fontWeight: FontWeight.w700),)),
      ),
    );
  }
}

