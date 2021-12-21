import 'package:flutter/material.dart';
import 'package:foodhub/food_hub/models/product_model.dart';

class SuggestedProductCard extends StatefulWidget {
  final double? width;
  final Product product;
  // final double? height;

  const SuggestedProductCard({
    Key? key,
    this.width, required this.product,
  }) : super(key: key);

  @override
  _SuggestedProductCardState createState() => _SuggestedProductCardState();
}

class _SuggestedProductCardState extends State<SuggestedProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 276,
                  height: 166,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)) ,
                      image: DecorationImage(
                        
                          image: NetworkImage(widget.product.imageUrl),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    right: 20,
                    top: 30,
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    )),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text(
                  widget.product.productName,
                  style: TextStyle(fontSize: 25),
                ),
                Text(widget.product.price.toString(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
