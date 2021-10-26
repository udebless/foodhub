import 'package:flutter/material.dart';
import 'package:foodhub/widgets/buttons/custom_flat_button.dart';

class FoodhubLanding extends StatelessWidget {
  const FoodhubLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/fdhubbg.png"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(
              color: Colors.black54,
            ),
            Positioned(left: 0, right: 0, top: 15, child: logo()),
            // SizedBox(
            //   height: 60,
            // ),
            Positioned( left: 145, top:380 ,child: textWelcome()),
        
            Positioned(
              top: 600,
              left: 35,
              right: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomFlatButton(
                    height: 60,
                    width: 200,
                    onPressed: () {},
                    buttonName: 'Login',
                  ),
                  CustomFlatButton(height: 60,
                    width: 200, buttonName: 'Sign Up', onPressed: () {}),
                ],
              ),
            ),
            SizedBox(height: 20),
            Positioned(
                top: 700,
                left: 30,
                right: 30,
                child: CustomFlatButton(

                    buttonName: 'Continue as guest',
                    width: 400,
                    height: 60,
                    onPressed: () {}))
          ],
        ),
      ),
    );
  }

  Widget textWelcome() {
    return Text(
      'WELCOME',
      style: TextStyle(
        fontSize: 50,
        color: Colors.white,
        letterSpacing: 4,
      ),
    );
  }

  Widget logo() {
    return Image(image: AssetImage("images/Logo.png"));
  }
}
