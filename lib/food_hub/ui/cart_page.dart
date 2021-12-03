import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/blocs/cubit/cart_cubit.dart';
import 'package:foodhub/blocs/cubit/store_cubit.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
import 'package:foodhub/food_hub/services/product_service.dart';
import 'package:foodhub/food_hub/ui/product_description_page.dart';
import 'package:foodhub/food_hub/util/cart_utils.dart';
import 'package:foodhub/widgets/buttons/custom_flat_button.dart';
import 'package:foodhub/widgets/custom_card.dart';
import 'package:foodhub/widgets/search_item_cards.dart';
import 'package:foodhub/widgets/srollablerow.dart';

class CartPage extends StatefulWidget {
  // final Product product;
  const CartPage({
    Key? key,
  }) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // List<Product> customerViewed = ProductService.customerAlsoViewed();
  //List<Product> cart = ProductService.myCart();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        List<Product> cart = state.cartItems;

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                collapsedHeight: 150,
                pinned: true,
                flexibleSpace: Container(
                    width: double.infinity,
                    height: 236,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/cartbg.png"),
                          fit: BoxFit.cover),
                    )),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Cart',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 33.0, right: 30),
                      child: SearchItemCard(
                        width: 100,
                        height: 50,
                        product: cart[index],
                        showAdsub: true,
                        checkoutbutton: true,
                        //buttonName: 'Checkout',
                      ),
                    );
                  },
                  childCount: cart.length,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Cart Total',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      BlocBuilder<CartCubit, CartState>(
                        builder: (context, state) {
                          return Text(
                            calculateCart(state.cartItems).toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: CustomFlatButton(
                    height: 60,
                    width: 300,
                    onPressed: () {},
                    buttonName: 'Checkout',
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Customers also viewed',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      BlocBuilder<StoreCubit, StoreState >(
                        builder: (context, state) {
                          return ScrollableRow(
                            children: List.generate(
                                state.customersalsoviewed.length,
                                (index) => InkWell(
                                      child: SuggestedProductCard(
                                        product: state.customersalsoviewed[index],
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder:
                                                    (BuildContext context) =>
                                                        ProductDescriptionPage(
                                                            product:
                                                                state.customersalsoviewed[
                                                                    index])));
                                      },
                                    )),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
