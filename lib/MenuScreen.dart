

import 'package:flutter/material.dart';
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
      body: Column(

        mainAxisSize: MainAxisSize.min,
        children:<Widget> [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(

              'Starters',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white70,
              ),
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection("Starters").snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }
              var starters = snapshot.data.docs;
                     List<Widget> meals= [];
              for (var starter in starters){
                String name = starter.data()['Name'];
                String imgurl = starter.data()['ImgUrl'];
                int price = starter.data()['Price'];
                final meal= MealsCard( name, price);
                 meals.add(meal);
              }
                 return Container(
                    padding: EdgeInsets.all(8.0),
                    height:  100.0,
                   child: ListView(

                     children: meals,
                   ),
                 );

              // return ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //   itemCount: starters.length,
              //   itemBuilder: (context, index) {
              //     DocumentSnapshot ds = starters[index];
              //     String name = starters[index]['Name'];
              //     int price = starters[index]['Price'];
              //     String imgurl = starters[index]['ImgUrl'];
              //     return MealsCard(imgurl, name, price);
              //   },


            },
          ),
        ],
      ),
    );
  }
}
