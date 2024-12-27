import 'package:flutter/material.dart';
import 'package:newecom/components/my_appbar.dart';
import 'package:newecom/components/my_drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        text: 'Cart Page',
      ),
      drawer: MyDrawer(),
    );
  }
}
