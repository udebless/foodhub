import 'package:flutter/material.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
import 'package:foodhub/food_hub/services/product_service.dart';
import 'package:foodhub/widgets/search_item_cards.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  List<Product> savedItems = ProductService.getSavedItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                  child: SearchItemCard(
                    width: 100,
                    height: 50,
                    checkoutbutton: true,
                    buttonName: 'Checkout',
                    showAdsub: false,
                    product: savedItems[index],
                  ),
                );
              },
              childCount: savedItems.length,
            ),
          ),
        ],
      ),
   
    );
  }
}
