
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/items.dart';
import 'package:hover_effect/hover_effect.dart';



class MealsCard extends StatelessWidget {




@override
  Widget build(BuildContext context) {


  final item=Provider.of<Item>(context);



    return Container(

      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.black45,
      ),
      padding: EdgeInsets.all(8.0),

      width: 220,
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(item.imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            item.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("200"),
              IconButton(
                icon: Icon(Icons.favorite),
                color: item.isfav ? Colors.red : Colors.grey,
                onPressed: () {
                  item.toggleFavourite();
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.pink[500],
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );

  }
}


