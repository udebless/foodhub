import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/statemanagement_app/cubit/app_cubit.dart';
import 'package:foodhub/statemanagement_app/widget/app_large_text.dart';
import 'package:foodhub/statemanagement_app/widget/app_text.dart';
import 'package:foodhub/statemanagement_app/widget/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome_one.jpg',
    'welcome_two.jpg',
    'welcome_three.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (_, index) {
          return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/' + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Nestuge'),
                        AppText(
                          text: 'Nestuge Team',
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                'Some beautiful pictures from nestuge team, im sure you will love it',
                          ),
                        ),
                        SizedBox(height: 40),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AppCubits>(context).getData();
                          },
                          child: Container(
                            width: 200,
                            child: ResponsiveButton(
                              width: 120,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(
                          3,
                          (indexDots) => Container(
                                width: 8,
                                margin: EdgeInsets.only(bottom: 2),
                                height: index == indexDots ? 25 : 8,
                                decoration: BoxDecoration(
                                  color: index == indexDots
                                      ? Colors.purple
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              )),
                    )
                  ],
                ),
              ),);
        },
        scrollDirection: Axis.vertical,
        itemCount: images.length,
      ),
    );
  }
}
