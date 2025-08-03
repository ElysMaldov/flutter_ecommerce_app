import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // Items on sale

  List<Shoe> shoeShop = [
    Shoe(
      name: "Sumn Frik",
      price: "199",
      imagePath: "lib/images/shoe_black_2.jpg",
      description: "Freaky shoes.",
    ),
    Shoe(
      name: "Blacc Frik",
      price: "199",
      imagePath: "lib/images/shoe_black.png",
      description: "Freaky shoes in black.",
    ),
    Shoe(
      name: "Blue Frik",
      price: "99",
      imagePath: "lib/images/shoe_blue.png",
      description: "Freaky shoes in blue.",
    ),
    Shoe(
      name: "Red Frik",
      price: "299",
      imagePath: "lib/images/shoe_red.png",
      description: "Red Freaky shoes.",
    ),
  ];

  // User cart
  List<Shoe> userCart = [];

  // Get list of items in sale
  List<Shoe> getShopList() {
    return shoeShop;
  }

  // Get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add cart
  void addCartItem(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Remove cart
  void removeCartItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
