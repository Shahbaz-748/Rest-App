import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
         child: Column(
           children:<Widget> [

                 DrawerHeader(child: Center(
                     child: Text("Company Name"),
                   ),
                 ),
            ],
         ),

          );
  }
}
