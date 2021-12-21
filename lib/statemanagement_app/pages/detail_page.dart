import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/statemanagement_app/cubit/app_cubit.dart';
import 'package:foodhub/statemanagement_app/cubit/app_cubit_state.dart';
import 'package:foodhub/statemanagement_app/widget/app_buttons.dart';
import 'package:foodhub/statemanagement_app/widget/app_large_text.dart';
import 'package:foodhub/statemanagement_app/widget/app_text.dart';
import 'package:foodhub/statemanagement_app/widget/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state) {

        DetailState detail = state as DetailState; 
        return Scaffold(
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.maxFinite,
                      height: 350,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('http://mark.bslmeiyu.com/uploads/'+ detail.place.img),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                Positioned(
                  left: 20,
                  top: 50,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<AppCubits>(context).goHome();
                        },
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 320,
                  child: Container(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: detail.place.name,
                              color: Colors.black.withOpacity(0.8),
                            ),
                            AppLargeText(
                              text: '\$  '+ detail.place.price.toString(),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            AppText(text: detail.place.location),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Wrap(
                                children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < detail.place.stars
                                    ? Colors.amber
                                    : Colors.grey,
                              );
                            })),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: '(5.0)',
                              color: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(height: 25),
                        AppLargeText(
                          text: 'People',
                          color: Colors.black54.withOpacity(0.8),
                          size: 20,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AppText(text: 'Number of people in your group'),
                        SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: AppButtons(
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                    backGroundColor: selectedIndex == index
                                        ? Colors.black
                                        : Colors.grey.withOpacity(0.8),
                                    size: 50,
                                    text: (index + 1).toString(),
                                    borderColor: selectedIndex == index
                                        ? Colors.black
                                        : Colors.grey.withOpacity(0.5)),
                              ),
                            );
                          }),
                        ),
                        SizedBox(height: 20),
                        AppLargeText(
                          text: 'Description',
                          color: Colors.black.withOpacity(0.8),
                          size: 30,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AppText(
                            text:detail.place.description
                               ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Row(
                      children: [
                        AppButtons(
                            color: Colors.black,
                            backGroundColor: Colors.white,
                            size: 60,
                            borderColor: Colors.grey,
                            isIcon: true,
                            icon: Icons.favorite_outline),
                        SizedBox(
                          width: 20,
                        ),
                        ResponsiveButton(
                          isResponsive: true,
                          // width: ,
                        )
                      ],
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
