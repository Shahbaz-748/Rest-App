import 'package:flutter/material.dart';
import 'package:hover_effect/hover_effect.dart';
import 'MealsCard.dart';
import 'package:provider/provider.dart';
import './models/items.dart';
import 'DrawerPage.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Veg = Provider.of<Items>(context).Veg;
    final Nonveg = Provider.of<Items>(context).Nonveg;
    final starters = Provider.of<Items>(context).Starters;

    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text(
          "Rest App",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Colors.white70),
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              size: 25.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
            child: Text(
              "Starters",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.black45,
              ),
            ),
          ),
          Container(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: HoverCard(
                depth: 15,
                depthColor: Colors.black12,
                builder: (context, hovering) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: starters.length,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                      value: starters[i],
                      child: MealsCard(),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
            child: Text(
              "Veg Meal",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.black45,
              ),
            ),
          ),
          Container(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: HoverCard(
                depth:15,
                depthColor: Colors.black12,
                builder: (context, hovering) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Veg.length,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                      value: Veg[i],
                      child: MealsCard(),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
            child: Text(
              "Non-Veg Meal",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.black45,
              ),
            ),
          ),
          Container(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: HoverCard(
                depth: 15,
                depthColor: Colors.black12,
                builder: (context, hovering) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Nonveg.length,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                      value: Nonveg[i],
                      child: MealsCard(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
