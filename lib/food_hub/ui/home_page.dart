// import 'package:flutter/material.dart';
// import 'package:foodhub/widgets/category_card.dart';

// import 'package:foodhub/widgets/custom_card.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(
//       children: [
//         Stack(
//           children: [
//             Container(
//                 width: double.infinity,
//                 height: 236,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("images/searchbg.png"),
//                       fit: BoxFit.cover),
//                 )),
//             Positioned(
//               top: 50,
//               left: 0,
//               right: 0,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 15, right: 15),
//                 child: TextFormField(
//                   // controller: widget.controller,
//                   decoration: InputDecoration(
//                       hintText: 'Search...',
//                       fillColor: Colors.white,
//                       filled: true,
//                       prefixIcon: Icon(Icons.search),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(width: 5, color: Colors.red))),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'Just for you',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'See all',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 250,
//               child: ListView.separated(
//                 scrollDirection: Axis.horizontal,
//                 separatorBuilder: (context, index) => SizedBox(
//                   width: 8,
//                 ),
//                 itemCount: 2,
//                 itemBuilder: (context, index) => 
//                   child: CustomScroll(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Category',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'See all',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height:400,
//           child: GridView.builder(
//               gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                   maxCrossAxisExtent: 400,
//                   //childAspectRatio:  1,
//                   crossAxisSpacing: 2,
//                   mainAxisSpacing: 2),
//               itemCount: 5,
//               itemBuilder: (BuildContext ctx, index) {
//                 return CategoryCard(
//                   categoryText: 'ORANGE',
//                 );
//               }),
//         ),
       
//       ],
//     ));
//   }
// }
