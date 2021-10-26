// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:foodhub/widgets/custom_card.dart';
// import 'package:foodhub/widgets/search_item_cards.dart';

// class SearchPage extends StatefulWidget {
  
//   const SearchPage({ Key? key }) : super(key: key);

//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:ListView(children: [
//  Padding(
//    padding: const EdgeInsets.all(12.0),
//    child: Row(
//      children: [
//        Padding(
//          padding: const  EdgeInsets.only(top: 30),
//          child: Icon(Icons.arrow_back),
//        ),
//        SizedBox(width: 5,),
//        SizedBox(
//          width: MediaQuery.of(context).size.width -70,
//          child: Padding(
//            padding: const EdgeInsets.only(top: 30),
//            child: TextFormField(
//              // controller: widget.controller,
//              decoration: InputDecoration(
//                hintText: 'Search...',
//                  fillColor: Colors.white,
//                  filled: true,
//                  suffixIcon: Icon(Icons.cancel, color: Colors.green,),
//                  border: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(10),
//                      borderSide: BorderSide(width: 5, color: Colors.red))),
//            ),
//          ),
//        ),
//      ],
//    ),
//  ),

//  SliverToBoxAdapter(
//    child: Row(
//    children: [
//       SearchItemCard(checkoutbutton: true, buttonName: 'Check Out',),
      
//        SizedBox(width: 8,),

//        Column(
//          children: [
//            Text('Pineapple', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//               Text('\$26', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//          ],
//        )
//    ],
//    ),
//  ),

//  Row(
//  children: [
//     SearchItemCard(checkoutbutton: true,),
//      SizedBox(width: 8,),

//      Column(
//        children: [
//          Text('Pineapple', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//             Text('\$26', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//        ],
//      )
//  ],
//  ),
//   SizedBox(height: 35,),
//  Row(
//  children: [
//      SearchItemCard(checkoutbutton: true,),
//      SizedBox(width: 8,),

//      Column(
//        children: [
//          Text('Pineapple', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//             Text('\$26', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//        ],
//      )
//  ],
//  ),
//   SizedBox(height: 35,),
//  Row(
//  children: [
//      SearchItemCard(checkoutbutton: true,),
//      SizedBox(width: 8,),

//      Column(
//        children: [
//          Text('Pineapple', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//             Text('\$26', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//        ],
//      )
//  ],
//  ),
//   SizedBox(height: 35,),
//  Row(
//  children: [
//      SearchItemCard(checkoutbutton: true,),
//      SizedBox(width: 8,),

//      Column(
//        children: [
//          Text('Pineapple', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//             Text('\$26', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
//        ],
//      )
//  ],
//  )

//       ],) ,

      
//     );
//   }
// }