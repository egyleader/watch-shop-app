import 'package:flutter/material.dart';
import 'package:watch_shop_app/const.dart';
import 'package:watch_shop_app/screens/product_details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Watch Shop app ',
      debugShowCheckedModeBanner: false,
      theme: kMainTheme,
      home: ProductDetailsPage(),
    );
  }
}
