import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe1> shoeShop = [
    Shoe1(
      name: 'Nike Air Force',
      description: 'Fashion Sneakers for Men',
      imagePath: 'images/shoe1.png',
      price: '\$' + '260',
    ),
    Shoe1(
      name: 'Air Jordan 13',
      description: 'Jordan Shoes for Men',
      imagePath: 'images/shoe2.png',
      price: '\$' + '359',
    ),
    Shoe1(
      name: 'Nike Air Max 97',
      description: 'Fashion Sneakers for Men',
      imagePath: 'images/shoe3.png',
      price: '\$' + '319',
    ),
    Shoe1(
      name: 'Air Jordan 4 Craft',
      description: 'Jordan Shoes for Men',
      imagePath: 'images/shoe4.png',
      price: '\$' + '359',
    ),
    Shoe1(
      name: 'Nike Air Max Plus',
      description: 'Fashion Sneakers for Men',
      imagePath: 'images/shoe5.png',
      price: '\$' + '349',
    ),
    Shoe1(
      name: 'Nike Renew Run 3',
      description: 'Men Running Shoes',
      imagePath: 'images/shoe6.png',
      price: '\$' + '154',
    ),

  ];

  List<Shoe1> userCart = [];

  List<Shoe1> getShowList() {
    return shoeShop;
  }

  List<Shoe1> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe1 shoe1) {
    userCart.add(shoe1);
    notifyListeners();
  }

  void removeItemFromCart(Shoe1 shoe1) {
    userCart.remove(shoe1);
    notifyListeners();
  }
}
