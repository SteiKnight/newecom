import 'package:flutter/material.dart';
import 'package:newecom/models/shop.dart';
import 'package:newecom/pages/cart_page.dart';
import 'package:newecom/pages/intro_page.dart';
import 'package:newecom/pages/shop_page.dart';
import 'package:newecom/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        theme: lightMode,
        routes: {
          '/intro_page': (context) => IntroPage(),
          '/shop_page': (context) => ShopPage(),
          '/cart_page': (context) => CartPage(),
        });
  }
}
