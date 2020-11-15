import 'package:flutter/material.dart';
import 'package:rest_app/CartScreen.dart';
import 'MenuScreen.dart';
import 'FavoritesScreen.dart';
import 'MealsCard.dart';

class TabScreen extends StatefulWidget {


  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

 int index=0;

 List<Widget> _screens;

@override
  void initState() {
    _screens=[
      MenuScreen(),
      FavoritesScreen(),
      CartScreen()

    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(

            title: Text(
               " Menu",
              style: TextStyle(
                  fontSize: 30.0,
                 fontWeight: FontWeight.bold,
                  color: Colors.white70,
               ),
            ),
           actions: [
              IconButton(
                     icon:Icon(
                       Icons.shopping_cart,
                       color: Colors.blueGrey,
                       size: 25.0,
                     ),
                   onPressed: (){
                       Navigator.push( context, MaterialPageRoute
                         (builder: (context) => CartScreen()));
                   },
              )
           ],
         ),
      drawer: Drawer() ,
     body: _screens[index],

      bottomNavigationBar: BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.black45,
        currentIndex: index,
        onTap: (currentitem) {
         setState(() {
           this.index=currentitem;

         });
        } ,
        fixedColor: Colors.blueGrey,
        items: [

           BottomNavigationBarItem(
               icon: Icon( Icons.account_circle,
                 ),
              title: Text(
                 " Profile"
              ),
            ),
          BottomNavigationBarItem(
            icon: Icon( Icons.favorite,
            ),
            title: Text(
                " Favorites"
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.shopping_cart,
            ),
            title: Text(
                " Cart"
            ),
          ),

        ],
      ),
    );
  }
}
