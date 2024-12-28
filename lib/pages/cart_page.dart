import 'package:flutter/material.dart';
import 'package:newecom/components/my_appbar.dart';
import 'package:newecom/components/my_button.dart';
import 'package:newecom/components/my_drawer.dart';
import 'package:newecom/models/product.dart';
import 'package:newecom/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove item from cart list
  void removeItemFromCart(BuildContext context, Product item) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('remove this item to cart?'),
        actions: [
          //cancel
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),

          //yes
          MaterialButton(
            onPressed: () {
              //pop dialog
              Navigator.pop(context);

              //add to cart
              context.read<Shop>().removeFromCart(item);
            },
            child: Text('Yes'),
          )
        ],
      ),
    );
  }

  //user pressed pay button
  void payNowPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('user wants to pay connect this to paymaent backend'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get cart list
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: MyAppbar(
        text: 'Cart Page',
      ),
      body: Column(
        children: [
          //cart list
          Expanded(
            child: cart.isEmpty
                ? Center(
                    child: const Text("Your cart is empty..."),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      //get individual item
                      final item = cart[index];

                      //show list of cart tile
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text('\$' + item.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => removeItemFromCart(context, item),
                        ),
                      );
                    },
                  ),
          ),

          //pay button
          Padding(
            padding: const EdgeInsets.all(50),
            child: MyButton(
                onTap: () => payNowPressed(context), child: Text('Pay Now')),
          )
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
