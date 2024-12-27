import 'package:newecom/models/product.dart';

class Shop {
  //shop products
  List<Product> _products = [
    Product(
      name: 'Product 1',
      price: 69.99,
      description: 'Item Description...',
      //imagePath: imagePath,
    ),
    Product(
      name: 'Product 2',
      price: 69.99,
      description: 'Item Description...',
      //imagePath: imagePath,
    ),
    Product(
      name: 'Product 3',
      price: 69.99,
      description: 'Item Description...',
      //imagePath: imagePath,
    ),
    Product(
      name: 'Product 4',
      price: 69.99,
      description: 'Item Description...',
      //imagePath: imagePath,
    ),
  ];
  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get products => _products;

  //get user cart
  List<Product> get cart => _cart;

  //add to cart
  void addToCart(Product product) {
    _cart.add(product);
  }

  //remove from cart
  void removeFromCart(Product product) {
    _cart.remove(product);
  }
}
