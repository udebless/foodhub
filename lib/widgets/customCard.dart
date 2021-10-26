import 'package:flutter/material.dart';

// class CustomCard extends StatefulWidget {
//   const CustomCard({Key? key}) : super(key: key);

//   @override
//   _CustomCardState createState() => _CustomCardState();
// }

// class _CustomCardState extends State<CustomCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         children: [
//           Container(
//             height: 300,
//             padding: EdgeInsets.symmetric(vertical: 16),
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               separatorBuilder: (context, index) => SizedBox(
//                 width: 8,
//               ),
//               itemCount: 2,
//               itemBuilder: (context, index) => ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//                 child:CustomCcroll(),
//               ),
//             ),
//           ),

//         ],
//       ),
//     );
//   }
// }
class MoviePoster extends StatelessWidget {

  const MoviePoster({Key ? key, }) : super(key: key);

  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          color: Colors.amber,
        //   decoration: BoxDecoration(
        //       // image: DecorationImage(
        //       //     image: NetworkImage(poster), fit: BoxFit.cover)),
        // ),
      ),
    ));
  }
}
