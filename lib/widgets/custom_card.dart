import 'package:flutter/material.dart';

class SuggestedProductCard extends StatefulWidget {
  final double? width;
  // final double? height;

  const SuggestedProductCard({
    Key? key,
    this.width,
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
                      image: DecorationImage(
                          image: AssetImage("images/fdhubbg.png"),
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
                  'Product',
                  style: TextStyle(fontSize: 25),
                ),
                Text('Price',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
