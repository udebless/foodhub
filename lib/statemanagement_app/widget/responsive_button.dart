import 'package:flutter/material.dart';
import 'package:foodhub/statemanagement_app/widget/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool ?isResponsive;
  double? width;
   ResponsiveButton({Key? key, this.width=120, this.isResponsive= false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
    
        width:isResponsive==true?double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple[800],
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true? MainAxisAlignment.spaceBetween: MainAxisAlignment.center ,
          children: [
           isResponsive==true ? Container(
            // margin: EdgeInsets.only(left: 20, right: 50),
             padding: EdgeInsets.all(20),
             child: AppText(text:'Book Trip Now', color: Colors.white )):Container(),
            Image.asset('images/three_arrow.png', color: Colors.white, width: 20, height: 15,),
          ],
        ),
      ),
    );
  }
}
