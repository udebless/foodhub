import 'package:flutter/material.dart';
import 'package:foodhub/widgets/buttons/custom_check+button.dart';

class DeliveryPathCard extends StatefulWidget {
  final double? width;
  final double? height;
  final String cardTexts;

  const DeliveryPathCard({
    Key? key,
    this.width,
    this.height,
    required this.cardTexts,
  }) : super(key: key);

  @override
  _DeliveryPathCardState createState() => _DeliveryPathCardState();
}

class _DeliveryPathCardState extends State<DeliveryPathCard> {
  bool checkOutPath = true;

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.green[100],
        elevation: 8,
        margin: EdgeInsets.all(20),
        color: Colors.green[100],
        child: Row(
          children: [
            CustomCheckButton( isCircular: true, selected: checkOutPath, onChanged: (val) {
              setState(() {
                checkOutPath=val;
              });
            }),
            Container(
              height: widget.height,
            //  width: widget.width,
              child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text(widget.cardTexts),
              ),
            ),
          ],
        ));
  }
}
