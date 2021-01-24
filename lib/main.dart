import 'package:flutter/material.dart';
import 'package:rest_app/MenuScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import './models/items.dart';

void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.




  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Items>(
      create: (ctx)=>Items() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuScreen(),
        routes: {

        },
      ),
    );
  }
}
