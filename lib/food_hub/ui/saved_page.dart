import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/blocs/cubit/saved_cubit.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
import 'package:foodhub/food_hub/services/product_service.dart';
import 'package:foodhub/widgets/app_bar_cart_item_icon.dart';
import 'package:foodhub/widgets/cart_icon.dart';
import 'package:foodhub/widgets/product_card.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  // List<Product> savedItems = ProductService.getSavedItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [   CartIcon(),],),
      body: BlocBuilder<SavedCubit ,SavedState>(
        builder: (context, saved) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                    width: double.infinity,
                    height: 236,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/watermelonbg.png"),
                          fit: BoxFit.cover),
                    )),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 33.0, right: 30),
                      child: ProductCard(
                        width: 100,
                        height: 50,
                        checkoutbutton: true,
                        buttonName: 'Checkout',
                        showAdsub: false,
                        product: saved.savedItems[index],
                      ),
                    );
                  },
                  childCount:saved.savedItems.length,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
