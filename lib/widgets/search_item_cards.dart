import 'package:flutter/material.dart';

class SearchItemCard extends StatefulWidget {
  final bool checkoutbutton;
  final String buttonName;
  final bool? showbuttonName;
  final double?  width;
  final double?  height;
  const SearchItemCard(
      {Key? key,
      required this.checkoutbutton,
      required this.buttonName,
      this.showbuttonName, this.width, this.height})
      : super(key: key);

  @override
  _SearchItemCardState createState() => _SearchItemCardState();
}

class _SearchItemCardState extends State<SearchItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 200,
                height: 135,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/carrot.png"),
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
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Pineapple',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$26',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (widget.checkoutbutton)
                  SizedBox(
                    width: widget.width,
                    height: widget.height,
                    child: TextButton(
                      child: Text(widget.buttonName),
                      style: TextButton.styleFrom(
                        // side: BorderSide(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Colors.teal,
                        backgroundColor: Colors.green[50],
                        onSurface: Colors.grey,
                        textStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}