import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/blocs/cubit/cart_cubit.dart';
import 'package:foodhub/food_hub/ui/cart_page.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
        position: BadgePosition.topEnd(top: 10, end: 10),
        badgeContent: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            print(state.cartItems);
            return Text(state.cartItems.length.toString());
          },
        ),
        child: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () => Navigator.push(
              context,
              
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => CartPage())),
        ));
  }
}
