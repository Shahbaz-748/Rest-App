import 'package:flutter/material.dart';

class MealsCard extends StatelessWidget {
  MealsCard( this.name,  this.price);

  // final String imageUrl;
  final String name;

  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      padding: EdgeInsets.all(10.0),
      height: 500,
      width: 500,
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            child: Text("This is the image"),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price.toString()),
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.pink,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.green,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
