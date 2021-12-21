import 'package:flutter/material.dart';
import 'package:foodhub/blocs/auth_bloc/auth_bloc.dart';
import 'package:foodhub/food_hub/services/authServices.dart';
import 'package:foodhub/food_hub/ui/home_page.dart';
import 'package:foodhub/widgets/arrowback/arrowback.dart';
import 'package:foodhub/widgets/buttons/custom_flat_button.dart';
import 'package:foodhub/widgets/textfields/text_fields.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/src/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/LoginPageBg.png"),
                fit: BoxFit.cover)),
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
                  ),
                )),
            Positioned(
                left: 30,
                top: 100,
                child: Text(
                  'LoginPage',
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
              top: 540,
              left: 35,
              right: 35,
              child: CustomFlatButton(
                height: 60,
                width: 200,
                onPressed: () {
                  context.read<AuthBloc>().add(Login(
                      email: _emailController.text,
                      password: _passwordController.text,
                      onError: () {},
                      onSuccess: () => Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) => Home()))));
                },
                buttonName: 'LoginPage',
              ),
            ),
            Positioned(
                left: 190,
                top: 620,
                child: InkWell(
                  onTap: () {
                    print('Forgot password');
                  },
                  child: Text(
                    'Forgot password ?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.blueGrey),
                  ),
                )),
            Positioned(
              top: 850,
              left: 35,
              right: 35,
              child: CustomFlatButton(
                height: 60,
                width: 200,
                onPressed: () {},
                buttonName: 'LoginPage with Google',
                imageIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(image: AssetImage("images/ggl.png")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
