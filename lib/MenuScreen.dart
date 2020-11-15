import 'package:flutter/material.dart';
import 'package:rest_app/StreamData.dart';

import 'MealsCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        scrollDirection: Axis.vertical,
        children:<Widget> [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(

              "Starters",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white70,
              ),
            ),
          ),
           StreamData("Starters"),



          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(

              "Non-Veg Meal",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white70,
              ),
            ),
          ),

          StreamData("Non-Veg"),


          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(

              "Chinese",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white70,
              ),
            ),
          ),

          StreamData("Chinese"),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(

              "Veg",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white70,
              ),
            ),
          ),

          StreamData("Veg"),


          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(

              "Drinks",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white70,
              ),
            ),
          ),

           StreamData("Drinks"),

        ],

      ),



    );
  }
}
