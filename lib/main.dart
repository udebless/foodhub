import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/app.dart';
import 'package:foodhub/blocs/cubit/cart_cubit.dart';
import 'package:foodhub/blocs/cubit/store_cubit.dart';

import 'package:foodhub/food_hub/services/product_service.dart';
import 'package:foodhub/food_hub/ui/cart_page.dart';
import 'package:foodhub/food_hub/ui/category_page.dart';
import 'package:foodhub/food_hub/ui/checkout_page.dart';
import 'package:foodhub/food_hub/ui/foodhub_landing_page.dart';
import 'package:foodhub/food_hub/ui/homepage1.dart';
import 'package:foodhub/food_hub/ui/login.dart';
import 'package:foodhub/food_hub/ui/home_page.dart';
import 'package:foodhub/food_hub/ui/product_description_page.dart';
import 'package:foodhub/food_hub/ui/saved_page.dart';
import 'package:foodhub/food_hub/ui/search.dart';
import 'package:foodhub/food_hub/ui/searchpage.dart';
import 'package:foodhub/food_hub/ui/sign_up.dart';
import 'package:foodhub/food_hub/ui/success.dart';
import 'package:foodhub/widgets/category_card.dart';
import 'package:foodhub/widgets/customCard.dart';
import 'package:foodhub/widgets/deliverypathCard.dart';

import 'blocs/cubit/saved_cubit.dart';
import 'counter_cubit.dart';
import 'counter_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = CounterObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (_) => CounterCubit(),
        ),
          BlocProvider<CartCubit>(
          create: (_) => CartCubit(),
        ),
           BlocProvider<StoreCubit>(
          create: (_) => StoreCubit()..init(),
        ),
         BlocProvider<SavedCubit>(
          create: (_) => SavedCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CartPage(),

        ///  home:CartPage(product:ProductService.getProductById('2') ),
        // home: ProductDescriptionPage(product: ProductService.getProductById('2')),
      ),
    );
  }
}
