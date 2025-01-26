import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  final List<Shoe> shoes = [
    Shoe(
      name: 'Nike Air Max 90',
      price: '150',
      description: 'Comfortable and stylish',
      imagePath: 'lib/images/jordan1.JPG',
    ),

    // Add more Shoe objects
    Shoe(
      name: 'Nike Air Max Dn',
      price: '300',
      description: 'Iconic style, unparalleled comfort',
      imagePath: 'lib/images/jordan.JPG',
    ),

    Shoe(
      name: 'Nike Free Run 5.0',
      price: '225',
      description: 'Move naturally, feel unstoppable.',
      imagePath: 'lib/images/jordan1.JPG',
    ),

    Shoe(
      name: 'Nike Court Vision Low',
      price: '159',
      description: 'Walk on air, redefine your stride',
      imagePath: 'lib/images/jordan.JPG',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //getting the list of shoes for sale
  List<Shoe> getShoeList() {
    return shoes;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
