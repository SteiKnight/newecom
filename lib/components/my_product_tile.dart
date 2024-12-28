import 'package:flutter/material.dart';
import 'package:newecom/models/product.dart';
import 'package:newecom/models/shop.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({
    super.key,
    required this.product,
  });

  void addToCart(BuildContext context) {
    showDialog(
      
      context: context,
      builder: (context) => AlertDialog(
        content: Text('add this item to cart?'),
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
              context.read<Shop>().addToCart(product);
            },
            child: Text('Yes'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primary,
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(10),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //product Image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(12)),
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.favorite)),
              ),
              SizedBox(
                height: 25,
              ),

              //product name
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              //product description
              Text(
                product.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),

          SizedBox(
            height: 25,
          ),

          //product price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' + product.price.toStringAsFixed(2),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
