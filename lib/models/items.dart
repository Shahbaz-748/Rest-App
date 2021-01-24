import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Item with ChangeNotifier {
  final String catId;
  final String id;
  final String imgUrl;
  final String name;
  final double price;
  final bool isveg;
  bool isfav;

  Item(this.catId, this.id, this.imgUrl, this.name, this.price, this.isveg,
      {this.isfav = false});

  void toggleFavourite(){
     isfav=!isfav;
     notifyListeners();
  }
}

class Items with ChangeNotifier {
  List<Item> _items = [
    Item(
        "starter",
        "str1",
        "https://www.verywellfit.com/thmb/i7MkyuL0Bs5Ksl4uem8rVAo_PXg=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chicken-noodle-soup-g18-56a8c0ce5f9b58b7d0f4d15f.jpg",
        "Soup",
        200.0,
        false),
    Item(
        "starter",
        "str1",
        "https://www.verywellfit.com/thmb/i7MkyuL0Bs5Ksl4uem8rVAo_PXg=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chicken-noodle-soup-g18-56a8c0ce5f9b58b7d0f4d15f.jpg",
        "Soup",
        200.0,
        false),
    Item(
        "starter",
        "str1",
        "https://www.verywellfit.com/thmb/i7MkyuL0Bs5Ksl4uem8rVAo_PXg=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chicken-noodle-soup-g18-56a8c0ce5f9b58b7d0f4d15f.jpg",
        "Soup",
        200.0,
        false),
    Item(
        "starter",
        "str1",
        "https://www.verywellfit.com/thmb/i7MkyuL0Bs5Ksl4uem8rVAo_PXg=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chicken-noodle-soup-g18-56a8c0ce5f9b58b7d0f4d15f.jpg",
        "Soup",
        200.0,
        false),
    Item(
        "starter",
        "str1",
        "https://www.verywellfit.com/thmb/i7MkyuL0Bs5Ksl4uem8rVAo_PXg=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chicken-noodle-soup-g18-56a8c0ce5f9b58b7d0f4d15f.jpg",
        "Soup",
        200.0,
        false),
    Item(
        "starter",
        "str1",
        "https://www.verywellfit.com/thmb/i7MkyuL0Bs5Ksl4uem8rVAo_PXg=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chicken-noodle-soup-g18-56a8c0ce5f9b58b7d0f4d15f.jpg",
        "Soup",
        200.0,
        false),
    Item(
        "NV",
        "nv1",
        "https://upload.wikimedia.org/wikipedia/commons/3/35/Biryani_Home.jpg",
        "Chicken Biryani",
        400.0,
        false),
    Item(
        "NV",
        "nv2",
        "https://upload.wikimedia.org/wikipedia/commons/3/35/Biryani_Home.jpg",
        "Chicken Biryani",
        400.0,
        false),
    Item(
        "NV",
        "nv3",
        "https://upload.wikimedia.org/wikipedia/commons/3/35/Biryani_Home.jpg",
        "Chicken Biryani",
        400.0,
        false),
    Item(
        "NV",
        "nv4",
        "https://upload.wikimedia.org/wikipedia/commons/3/35/Biryani_Home.jpg",
        "Chicken Biryani",
        400.0,
        false),
    Item(
        "NV",
        "nv5",
        "https://upload.wikimedia.org/wikipedia/commons/3/35/Biryani_Home.jpg",
        "Chicken Biryani",
        400.0,
        false),
     Item("veg",
         "v1",
         "https://images.app.goo.gl/5ce4AHfeThEZczBd6",
         "Veg Pulao",
         300.0 ,
         true ),
     Item("veg",
         "v2",
         "https://images.app.goo.gl/5ce4AHfeThEZczBd6",
         "Veg Pulao",
         300.0 ,
         true ),
     Item("veg",
         "v3",
         "https://images.app.goo.gl/5ce4AHfeThEZczBd6",
         "Veg Pulao",
         300.0 ,
         true ),
     Item("veg",
         "v4",
         "https://images.app.goo.gl/5ce4AHfeThEZczBd6",
         "Veg Pulao",
         300.0 ,
         true ),
     Item("veg",
         "v5",
         "https://images.app.goo.gl/5ce4AHfeThEZczBd6",
         "Veg Pulao",
         300.0 ,
         true ),
  ];

  // ignore: non_constant_identifier_names
    List<Item> get Starters{
      return [..._items.where((item) => item.catId=="starter").toList()];
    }
  // ignore: non_constant_identifier_names
  List<Item> get Nonveg{
     return [..._items.where((item) => item.catId=="NV").toList()];
  }

  // ignore: non_constant_identifier_names
  List<Item> get Veg{
     return [..._items.where((item) => item.catId=="veg").toList()];
  }


  void addItem(){
       //_items.add();
    notifyListeners();
  }

}
