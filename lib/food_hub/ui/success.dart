

import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({ Key? key }) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [Text('Payment Successful'),
        Icon(Icons.done)],
      )


      
    );
  }
}