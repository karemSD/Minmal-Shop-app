import 'package:flutter/material.dart';
import 'package:minmalecommerce/models/product_model.dart';

class Shop extends ChangeNotifier {
//products for sale
  final List<Product> _shop = [
    Product(
        name: "Rolex Watch",
        price: 599.99,
        description:
            "Elevate your style with the timeless luxury of Rolex. Each Rolex watch is a symbol of enduring sophistication and precision craftsmanship ",
        imagePath: "assets/images/products/watch1.png"),
    Product(
        name: "Gizmo X",
        price: 799.99,
        description: "The latest Gizmo X with cutting-edge technology",
        imagePath: "assets/images/products/sneaker.png"),
    Product(
        name: "Quantum Gadget",
        price: 1299.99,
        description: "Experience the future with the Quantum Gadget",
        imagePath: "assets/images/products/watch2.png"),
    Product(
        name: "Tech Innovator",
        price: 499.99,
        description:
            "The Tech Innovator - perfect for tech enthusiasts, The Tech Innovator - perfect for tech enthusiasts fsdfsdfasdfadfasdfd  dasgsdgdsgsdagasdg  ",
        imagePath: "assets/images/products/shoes.png"),
    Product(
        name: "Black Hoodie",
        price: 499.99,
        description:
            "Stylish Nike hoodie, available in medium and large sizes, perfect for embracing gym comfort while elevating your everyday style effortlessly.",
        imagePath: "assets/images/products/nike.png"),
    Product(
        name: "Tech Innovator",
        price: 499.99,
        description:
            "The Tech Innovator - perfect for tech enthusiasts, The Tech Innovator - perfect for tech enthusiasts",
        imagePath: "assets/images/products/blackhoodie.png"),
    Product(
        name: "Tech Innovator",
        price: 499.99,
        description:
            "The Tech Innovator - perfect for tech enthusiasts, The Tech Innovator - perfect for tech enthusiasts",
        imagePath: "assets/images/products/black-sunglasses.png"),
    Product(
        name: "Tech Innovator",
        price: 499.99,
        description:
            "The Tech Innovator - perfect for tech enthusiasts, The Tech Innovator - perfect for tech enthusiasts",
        imagePath: "assets/images/products/sunglasses.png"),
  ];
//user cart
  List<Product> _cart = [];

//get products list
  List<Product> get shop => _shop;
//get user cart
  List<Product> get cart => _cart;

// add item to cart
  void addToCart({required Product item}) {
    _cart.add(item);
    notifyListeners();
  }

// remove  item from cart
  void removeFromCart({required Product item}) {
    _cart.remove(item);
    notifyListeners();
  }
}
