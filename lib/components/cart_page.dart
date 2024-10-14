import 'package:ecommerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';
import 'cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          const Text(
            'My Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28
            ),
            ),
          
        const SizedBox(height: 15,),
        
        Expanded(
          child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
              // get individual shoe
              Shoe individualShoe = value.getUserCart()[index];

              //return the cart item
              return CartItem(shoe: individualShoe,);
            },
          ),
         )
        ],
        
        ),
      )
    );
  }
}