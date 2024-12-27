import 'package:flutter/material.dart';
import 'package:newecom/components/my_appbar.dart';
import 'package:newecom/components/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        text: 'Shop Page',
      ),
      drawer: MyDrawer(),
    );
  }
}
