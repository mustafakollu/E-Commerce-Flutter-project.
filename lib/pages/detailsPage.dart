import 'package:flutter/material.dart';
import 'package:flutter_application/styles/color.dart';
import 'package:flutter_application/styles/icon.dart';
import 'package:flutter_application/widgets/buttonBuild.dart';
import 'package:flutter_application/widgets/textBuild.dart';

class DetailsPage extends StatefulWidget {
  //Product's features
  final String name;
  final String price;
  final String description;
  final int photoNumber;

  //constructor
  DetailsPage(this.name, this.price, this.description, this.photoNumber);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int temp = 1; //This variable uses for change photos
  int selected = 0; //this is for body size

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          homeButton(context),
        ],
        title: Text("Details"),
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Stack(
              children: [
                //product's photo
                Image.asset("images/ürün${widget.photoNumber}_$temp.jpg"),
                Positioned(
                  //left icon
                  top: 180,
                  child: ArrowButton(
                    state: () {
                      setState(
                        () {
                          (temp == 3) ? temp = 1 : temp++;
                        },
                      );
                    },
                    icon1: leftArrowIcon,
                  ),
                ),
                Positioned(
                  //right icon
                  right: 0,
                  top: 180,
                  child: ArrowButton(
                    state: () {
                      setState(
                        () {
                          (temp == 3) ? temp = 1 : temp++;
                        },
                      );
                    },
                    icon1: rightArrowIcon,
                  ), //at details page
                ),
              ],
            ),
          ),
          Padding(
            //Product's detail
            padding: const EdgeInsets.all(8.0),
            child: productText("${widget.description}", 15, darkBlack),
          ),
          Padding(
            //Product's name
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: productText("${widget.name}", 20, black),
            ),
          ),
          Center(
            //Product's price
            child: productText("${widget.price} TL", 20, LCWBlue),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ButtonBar(
              //Body size button at details page
              children: [
                HumanSizeButton(
                  text: "S",
                  selected: selected,
                  rank: 1,
                  state: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                ),
                HumanSizeButton(
                  text: "M",
                  selected: selected,
                  rank: 2,
                  state: () {
                    setState(() {
                      selected = 2;
                    });
                  },
                ),
                HumanSizeButton(
                  text: "L",
                  selected: selected,
                  rank: 3,
                  state: () {
                    setState(() {
                      selected = 3;
                    });
                  },
                ),
                HumanSizeButton(
                  text: "XL",
                  selected: selected,
                  rank: 4,
                  state: () {
                    setState(() {
                      selected = 4;
                    });
                  },
                ),
              ],
            ),
          ),
          //Buttons at button build
          button1("Add Basket", LCWBlue, white, white),
          button1("Complete the Combination ", white, LCWBlue, LCWBlue),
        ],
      ),
    );
  }
}
