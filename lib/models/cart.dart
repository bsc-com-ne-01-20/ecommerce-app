import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'Jordan 4', 
    price: '40000', 
    imagePath: 'lib/images/airjordan4.png', 
    description: 'Tsapato yapamwamba kwambiri yodyera, kutchena kupose apa'
    ),
    Shoe(name: 'Jordan 1', 
    price: '30000', 
    imagePath: 'lib/images/airjordan1.png', 
    description: 'The design that has been there for ages that caters across different outfits you could this of'
    ),
    Shoe(name: 'Luka', 
    price: '60000', 
    imagePath: 'lib/images/luka.png', 
    description: 'Nice kicks to rock in everyday, on and off the pitch'
    ),
    Shoe(name: 'Tatum', 
    price: '45000', 
    imagePath: 'lib/images/tatum.png', 
    description: 'The forward thinking design of his signature '
    )
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get method for getting list of shoes that are for sale
  List<Shoe> getShoeList() {
    return shoeShop;
 }

  // getting what is in the cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //adding to the cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove from the cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
  }