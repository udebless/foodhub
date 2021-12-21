import 'package:flutter/material.dart';
import 'package:foodhub/food_hub/ui/cart_page.dart';
import 'package:badges/badges.dart';

class  AppBarCartIcon extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        
      ],
    );
  }

  @override
  
  Size get preferredSize => throw Size.fromHeight(kToolbarHeight);
}
