import 'package:flutter/material.dart';
 import 'package:cloud_firestore/cloud_firestore.dart';
 import 'package:rest_app/MealsCard.dart';



    class StreamData extends StatelessWidget {

      StreamData(this.collection);

      final String collection;

     final  FirebaseFirestore _firestore=FirebaseFirestore.instance;
      @override
      Widget build(BuildContext context) {
        return StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection(collection).snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container(
                    height: 40,
                    width: 40,
                    child: CircularProgressIndicator());
              }
              var starters = snapshot.data.docs;
              List<Widget> meals = [];
              for (var starter in starters) {
                String name = starter.data()['Name'];
                String imgurl = starter.data()['ImgUrl'];
                int price = starter.data()['Price'];
                Widget meal = MealsCard(imgurl, name, price);
                meals.add(meal);
              }
              return Container(

                height: 250.0,

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: meals,
                ),
              );
            }
        );

      }
    }