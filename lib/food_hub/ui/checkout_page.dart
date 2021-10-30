import 'package:flutter/material.dart';
import 'package:foodhub/widgets/buttons/custom_check+button.dart';
import 'package:foodhub/widgets/buttons/custom_flat_button.dart';
import 'package:foodhub/widgets/deliverypathCard.dart';
import 'package:foodhub/widgets/textfields/text_fields.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  TextEditingController _emailController = TextEditingController();
  bool defaultShippingAdress = true;
  bool paywithcard = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Text(
                'CheckOut',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Text(
                'Address details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: CustomTextFields(
              fillCollor: Colors.green[50],
              fieldText: 'First Name',
              controller: _emailController,
            ),
          )),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: CustomTextFields(
              fillCollor: Colors.green[50],
              fieldText: 'Last Name',
              controller: _emailController,
            ),
          )),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: CustomTextFields(
              fillCollor: Colors.green[50],
              fieldText: 'Address ',
              controller: _emailController,
            ),
          )),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: CustomTextFields(
              fillCollor: Colors.green[50],
              fieldText: 'City',
              controller: _emailController,
              customIcons: Icon(Icons.expand_more),
            ),
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                children: [
                  CustomTextFields(
                    fillCollor: Colors.green[50],
                    width: 100,
                    fieldText: 'Phone number',
                    controller: _emailController,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CustomTextFields(
                      fillCollor: Colors.green[50],
                      width: 300,
                      // fieldText: 'First Name',
                      controller: _emailController,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [],
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: CustomCheckButton(
                          selected: defaultShippingAdress,
                          onChanged: (val) {
                            setState(() {
                              defaultShippingAdress = val;
                            });
                          }),
                    ),
                    Text(
                      'Default Shipping Address',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, top: 12),
                  child: CustomFlatButton(
                    width: 210,
                    buttonName: 'Save',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          // SliverToBoxAdapter(
        SliverToBoxAdapter(
          child: DeliveryPathCard(height: 50, cardTexts:'Pay with Card. Verve, Visa, MasterCard' ),
        ),
         SliverToBoxAdapter(
          child: DeliveryPathCard(height: 50, cardTexts:'Buy now and pay small small' ),
          
        ),
         SliverToBoxAdapter(
          child: DeliveryPathCard(height: 50, cardTexts:'Pay on Delivery',  ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
             children: [
              
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Text('Sub Total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                     Text('N56', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
               ],),
              
               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                 children: [
                  Text('Delivery fee', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                     Text('N15', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
               ),
                 Divider(color: Colors.green, thickness: 4,),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Text('Total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                     Text('N76', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
                
               ),
             ],
            ),
          ),
        )
        ],
      ),
    );
  }
}
