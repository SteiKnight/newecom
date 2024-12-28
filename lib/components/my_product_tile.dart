import 'package:flutter/material.dart';
import 'package:newecom/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      color: Theme.of(context).colorScheme.primary,
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          //product Image
          Icon(Icons.favorite),

          //product name
          Text(product.name),

          //product description
          Text(product.description),

          //product price
          Text(
            product.price.toStringAsFixed(3),
          )
        ],
      ),
    ));
  }
}
