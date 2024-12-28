import 'package:flutter/material.dart';
import 'package:newecom/components/my_appbar.dart';
import 'package:newecom/components/my_drawer.dart';
import 'package:newecom/components/my_product_tile.dart';
import 'package:newecom/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access shop products
    final products = context.watch<Shop>().products;

    return Scaffold(
      appBar: MyAppbar(
        text: 'Shop Page',
      ),
      body: ListView(
        children: [
          //subtitle
          Center(
            child: Text('Pick from a selected list of selected products.',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                )),
          ),

          //list

          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(15),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return MyProductTile(
                  product: products[index],
                );
              },
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
