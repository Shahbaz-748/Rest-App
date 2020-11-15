
import 'package:flutter/material.dart';
import 'package:rest_app/TabScreen.dart';
import 'package:rest_app/main.dart';
import 'FavoritesScreen.dart';

class MealsCard extends StatefulWidget {
  MealsCard(this.imageUrl, this.name, this.price);

  final String imageUrl;
  final String name;

  final int price;

  @override
  _MealsCardState createState() => _MealsCardState();
}

class _MealsCardState extends State<MealsCard> {

 int color = 0;
 Color favColor=Colors.white;



//0 for white 1 for pink
void changeFavs(int num){
     if(num==0){
        setState(() {
            favColor=Colors.pink;
             color=1;

        });
        showSnackBar();


     }

   else{
      setState(() {
        favColor=Colors.white;
        color=0;
      });
     }
}

 void showSnackBar(){
  final snackbar= SnackBar(content: Text("${widget.name} is added to favorites ",
          style: TextStyle(
            color: Colors.white70,
          ),
       ),
     elevation: 6.0,
     backgroundColor: Colors.green,

    );


  Scaffold.of(context).showSnackBar(snackbar);
 }

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.black26,
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
                image: NetworkImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.name,
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
              Text(widget.price.toString()),
              IconButton(
                icon: Icon(Icons.favorite),
                color: favColor,
                onPressed: () {
                   changeFavs(color);
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

