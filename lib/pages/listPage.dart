import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/Layout/drawer.dart';
import 'package:flutter_application/models/Model.dart';
import 'package:flutter_application/pages/detailsPage.dart';
import 'package:flutter_application/widgets/cardBuild.dart';
import 'package:flutter_application/styles/icon.dart';
import 'package:flutter_application/widgets/buttonBuild.dart';

class ListMenuPage extends StatefulWidget {
  static String routeName = "/listpage";
  @override
  _ListMenuPageState createState() => _ListMenuPageState();
}

class _ListMenuPageState extends State<ListMenuPage> {
  double axis = 500; //uses for axis of page at gridview
  double rSize = 3; //uses for aspect ratio at gridview
  double tSize = 20; // text size of name area at buildCard function
  double fSize = 25; // text size of price area at buildCard function
  bool sizes =
      true; //This variable is used to change the product quantity on the page.
  Model model;
  //this function is reading json file with Model.dart
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    setState(
      () {
        model = Model.fromJson(data);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return Scaffold(
      drawer: MyDrawerBuild(),
      appBar: AppBar(
        actions: [
          changeElementOfPage(), //This button widget change showed element quantity
          homeButton(
              context), //This button widget is redirecting to homepage. The widget in buttonBuild.
        ],
        title: Text("Clothes"),
      ),
      body: (model != null) ? buildGridview() : Column(),
    );
  }

  //this Button widget change showed element quantity
  IconButton changeElementOfPage() {
    return IconButton(
      onPressed: () {
        setState(() {
          sizes = !sizes;
          if (sizes == true) {
            axis = 500;
            tSize = 20;
            fSize = 25;
            rSize = 4;
          } else {
            axis = 200;
            tSize = 13;
            fSize = 20;
            rSize = 6;
          }
        });
      },
      icon: Icon(filterIcon),
    );
  }

  //this method is listing products
  GridView buildGridview() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: axis,
          childAspectRatio: 3 / rSize,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0),
      itemCount: model.items.length,
      itemBuilder: (BuildContext context, index) {
        return Container(
          alignment: Alignment.center,
          child: ClothesCard(
            //Card of product.
            name: model.items[index].name,
            price: model.items[index].price,
            description: model.items[index].description,
            index: index + 1,
            state: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                          model.items[index].name,
                          model.items[index].price,
                          model.items[index].description,
                          index + 1),
                    ),
                  );
                },
              );
            },
            textSize: tSize,
            fontSize: fSize,
          ),
        );
      },
    );
  }
}
