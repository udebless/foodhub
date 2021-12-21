import 'package:flutter/material.dart';
import 'package:foodhub/blocs/cubit/cart_cubit.dart';
import 'package:foodhub/blocs/cubit/saved_cubit.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/food_hub/services/product_service.dart';
import 'package:foodhub/food_hub/ui/product_description_page.dart';
import 'package:foodhub/widgets/favourite.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool checkoutbutton;
  final String? buttonName;
  final bool? showbuttonName;
  final double? width;
  final double? height;
  final bool showAdsub;
  const ProductCard(
      {Key? key,
      this.checkoutbutton = false,
      this.buttonName,
      this.showbuttonName,
      this.width,
      this.height,
      this.showAdsub = false,
      required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('this is the count ${product.itemCount}');
    // print(showAdsub);

    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Stack(
            children: [
              InkWell(
                child: Container(
                  width: 200,
                  height: 135,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage("images/carrot.png"),
                          fit: BoxFit.cover)),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              ProductDescriptionPage(product: product)));
                },
              ),
              Positioned(
                  right: 20,
                  top: 30,
                  child: BlocBuilder<SavedCubit, SavedState>(
                    builder: (context, saved) {
                      return Favourite(
                        onChanged: (value) {
                          if (value) {
                            context.read<SavedCubit>().addSavedItem(product);
                          } else {
                            context
                                .read<SavedCubit>()
                                .removeFromSavedItems(product);
                          }
                        },
                        selected: saved.isAdded(product.id),
                      );
                    },
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  product.productName,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  (product.price * product.itemCount).toString(),
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (checkoutbutton && buttonName != null)
                  SizedBox(
                    width: width,
                    height: height,
                    child: TextButton(
                      child: Text(buttonName!),
                      style: TextButton.styleFrom(
                        // side: BorderSide(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Colors.teal,
                        backgroundColor: Colors.green[50],
                        onSurface: Colors.grey,
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () =>
                          context.read<CartCubit>().addTocart(product),
                    ),
                  ),
                if (showAdsub)
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.cancel,
                          ),
                          onPressed: () =>
                              context.read<CartCubit>().removeFromCart(product),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.remove_circle,
                          ),
                          onPressed: () => context
                              .read<CartCubit>()
                              .changeProductCount(product.id, ),
                        ),
                        Text(product.itemCount.toString()),
                        IconButton(
                          icon: Icon(
                            Icons.add_circle,
                          ),
                          onPressed: () => context
                              .read<CartCubit>()
                              .changeProductCount(product.id, isAdd:true),
                        ),
                      ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
