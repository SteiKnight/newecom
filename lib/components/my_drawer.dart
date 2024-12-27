import 'package:flutter/material.dart';
import 'package:newecom/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Logo
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(100),
                  child: Center(
                    child: Icon(
                      Icons.shopping_bag,
                      size: 72,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
                //Shop
                MyListTile(
                  icon: Icons.home,
                  text: 'Shop',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/shop_page');
                  },
                ),
                //Cart
                MyListTile(
                  icon: Icons.shopping_cart_checkout,
                  text: 'Cart',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      '/cart_page',
                    );
                  },
                ),
              ],
            ),
            //Exit
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: MyListTile(
                icon: Icons.logout,
                text: 'Exit',
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/intro_page', (route) => false);
                },
              ),
            ),
          ],
        ));
  }
}
