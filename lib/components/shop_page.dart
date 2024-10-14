import 'package:ecommerce_app/components/shoe_tile.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //adding a shoe to the shoe tile
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //notify the user, shoe successfully added
    showDialog(
      context: context, 
      builder: (context) => const AlertDialog(
        title: Text('Successfully added! '),
        content: Text('Check your cart'),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
      children:[
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
            ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search'),
              Icon(Icons.search, color: Colors.grey,),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(color: Colors.grey[600],
             ),
            ),
        ),

        //hot pick
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
          
            ],
          ),
        ),
        const SizedBox(height: 18,),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
               // get a shoe from shop list
                 Shoe shoe = value.getShoeList()[index];
                //return the shoe
                 return ShoeTile(
                  onTap: () => addShoeToCart(shoe),
                  shoe: shoe,
                 );
            },
          ),
        ),
        const SizedBox(height: 35,),
        const Padding(
          padding: EdgeInsets.only(top: 38, right: 38, left: 38),
          child: Divider(
            color: Colors.white,
          ),
        )

      ],
    )
  );
  }
}