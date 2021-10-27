import 'package:flutter/material.dart';
import 'package:foodhub/widgets/buttons/custom_flat_button.dart';
import 'package:foodhub/widgets/custom_card.dart';
import 'package:foodhub/widgets/srollablerow.dart';

class ProductDescriptionPage extends StatefulWidget {
  const ProductDescriptionPage({Key? key}) : super(key: key);

  @override
  _ProductDescriptionPageState createState() => _ProductDescriptionPageState();
}

class _ProductDescriptionPageState extends State<ProductDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                      image: AssetImage("images/descriptionbg.png"),
                      fit: BoxFit.cover),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                width: double.infinity,
                height: 236,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/eggs.png"), fit: BoxFit.cover),
                )),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        'Egg',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text('N1450',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber[400],
                              ),
                              Icon(Icons.star, color: Colors.amber[400]),
                              Icon(Icons.star, color: Colors.amber[400]),
                              Icon(Icons.star, color: Colors.amber[400]),
                              Icon(Icons.star_border)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text('rating: 4.0',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product description',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                      ' Egg is the content of a hard-shelled reproductive body produced by a bird, considered as food Eggs are a protein and nutrient powerhouse. They can be added to many dishes and prepared in numerous ways.One way to enjoy eggs is to hard-boil them.',
                      style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Nutritional values',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Here is everything you need to know about hard-boiled eggs.Hard-boiled eggs are loaded with nutrients, protein and healthy fats. One large hard-boiled egg (50 grams) provides',
                        style: TextStyle(fontSize: 20)),
                  ),
                  Text('Calories: 77', style: TextStyle(fontSize: 20)),
                  Text('Carbs: 0.6 grams', style: TextStyle(fontSize: 20)),
                  Text('Total fat: 5.3 grams', style: TextStyle(fontSize: 20)),
                  Text('Saturated fat: 1.6 grams',
                      style: TextStyle(fontSize: 20)),
                  Text('Monounsaturated fat: 2.0 grams',
                      style: TextStyle(fontSize: 20)),
                  Text('Cholesterol: 212 mg', style: TextStyle(fontSize: 20)),
                  Text('Protein: 6.3 grams', style: TextStyle(fontSize: 20)),
                  Text(
                      'Vitamin A: 6% of the Recommended Dietary Allowance (RDA)',
                      style: TextStyle(fontSize: 20)),
                  Text('Vitamin B2 (riboflavin): 15% of the RDA',
                      style: TextStyle(fontSize: 20)),
                  Text('Vitamin B12 (cobalamin): 9% of the RDA',
                      style: TextStyle(fontSize: 20)),
                  Text('Vitamin B5 (pantothenic acid): 7% of the RDA',
                      style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Customers also viewed',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  ScrollableRow(
                    children:
                        List.generate(2, (index) => SuggestedProductCard()),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          size: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Udechukwu Commando',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber[400]),
                                  Icon(Icons.star, color: Colors.amber[400]),
                                  Icon(Icons.star, color: Colors.amber[400]),
                                  Icon(Icons.star, color: Colors.amber[400]),
                                  Icon(Icons.star_border)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Text('1/3/2021',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Amazing product',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text(
                      'One of the eggs broke before it got to my house, i emailed them and the egg was replaced. I was beyond amazed.',
                      style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFlatButton(
                imageIcon: Icon(Icons.shopping_cart),
                height: 50,
                width: 400,
                onPressed: () {},
                buttonName: 'Checkout',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
