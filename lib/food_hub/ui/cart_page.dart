import 'package:flutter/material.dart';
import 'package:foodhub/widgets/buttons/custom_flat_button.dart';
import 'package:foodhub/widgets/custom_card.dart';
import 'package:foodhub/widgets/search_item_cards.dart';
import 'package:foodhub/widgets/srollablerow.dart';

class CartPage extends StatefulWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
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
                )),),
SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('Cart', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
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
                 
                    checkoutbutton: true,
                    //buttonName: 'Checkout',
                  ),
                );
              },
              childCount: 2,
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
Text('Cart Total', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
         Text('N3453', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), )
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
                onPressed: (){},
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
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                   ),
                  
                  ScrollableRow(
                    children: List.generate(3, (index) => SuggestedProductCard()),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green[900],
          unselectedItemColor: Colors.grey,
         
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ]),
      
    );
  }
}