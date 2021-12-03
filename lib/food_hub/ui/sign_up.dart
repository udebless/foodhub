import 'package:flutter/material.dart';
import 'package:foodhub/food_hub/services/authServices.dart';
import 'package:foodhub/food_hub/ui/home_page.dart';
import 'package:foodhub/food_hub/ui/login.dart';
import 'package:foodhub/widgets/arrowback/arrowback.dart';
import 'package:foodhub/widgets/buttons/custom_flat_button.dart';
import 'package:foodhub/widgets/textfields/text_fields.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FoodHubSignUp extends StatefulWidget {
  const FoodHubSignUp({Key? key}) : super(key: key);

  @override
  _FoodHubSignUpState createState() => _FoodHubSignUpState();
}

class _FoodHubSignUpState extends State<FoodHubSignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _comfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/loginBg.png"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(
              color: Colors.black45,
            ),
            Positioned(
                left: 30,
                top: 50,
                child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 50,
                    ))),
            Positioned(
                left: 30,
                top: 100,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
            Positioned(
                top: 300,
                left: 35,
                right: 35,
                child: CustomTextFields(
                  fillCollor: Colors.white,
                  fieldText: 'Email Address',
                  controller: _emailController,
                )),
            Positioned(
                top: 400,
                left: 35,
                right: 35,
                child: CustomTextFields(
                  fillCollor: Colors.white,
                  fieldText: 'Password',
                  controller: _passwordController,
                  customIcons: Icon(Icons.remove_red_eye),
                )),
            Positioned(
                top: 500,
                left: 35,
                right: 35,
                child: CustomTextFields(
                  fillCollor: Colors.white,
                  fieldText: 'Comfirm Password',
                  controller: _comfirmPasswordController,
                  customIcons: Icon(Icons.remove_red_eye),
                )),
            Positioned(
              top: 650,
              left: 35,
              right: 35,
              child: CustomFlatButton(
                height: 60,
                width: 200,
                onPressed: () {
                  if (_passwordController.text !=
                      _comfirmPasswordController.text) {
                    return ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.blueGrey,
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Password does not match'),
                        ),
                        duration: Duration(seconds: 5),
                      ),
                    );
                  } else {
                    AuthService().signUp(
                        _passwordController.text, _emailController.text,
                        onSuccess: () => Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>  Home())));
                  }
                },
                buttonName: 'Sign Up',
              ),
            ),
            Positioned(
              top: 850,
              left: 35,
              right: 35,
              child: CustomFlatButton(
                imageIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(image: AssetImage("images/ggl.png")),
                ),
                height: 60,
                width: 200,
                onPressed: () {},
                buttonName: 'Continue with Google',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
