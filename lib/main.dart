
import 'package:ecommerce_flutter/screens/home/food_details_page.dart';
import 'package:ecommerce_flutter/screens/home/main_food_page.dart';
import 'package:ecommerce_flutter/screens/home/recommended_food_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecommendedFoodDetailsScreen(),
    );
  }
}
