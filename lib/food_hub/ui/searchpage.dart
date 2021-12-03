import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/blocs/cubit/store_cubit.dart';
import 'package:foodhub/food_hub/services/product_service.dart';
import 'package:foodhub/widgets/category_card.dart';
import 'package:foodhub/widgets/search_item_cards.dart';

class SearchPagee extends StatefulWidget {
  const SearchPagee({Key? key}) : super(key: key);

  @override
  _SearchPageeState createState() => _SearchPageeState();
}

class _SearchPageeState extends State<SearchPagee> {
  // var products = ProductService.getAllPrpducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StoreCubit, StoreState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 70,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: TextFormField(
                            // controller: widget.controller,
                            decoration: InputDecoration(
                                hintText: 'Search...',
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: Icon(
                                  Icons.cancel,
                                  color: Colors.green,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 5, color: Colors.red))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  right: 15,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 33.0, right: 100),
                        child: SearchItemCard(
                          checkoutbutton: false,
                          buttonName: 'Check out',
                          product:state.allProduct[index],
                        ),
                      );
                    },
                    childCount: state.allProduct.length,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
