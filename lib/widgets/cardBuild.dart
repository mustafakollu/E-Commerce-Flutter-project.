import 'package:flutter/material.dart';
import 'package:flutter_application/styles/color.dart';

class ClothesCard extends StatelessWidget {
  final String name;
  final String price;
  final String description;
  final int index;
  final Function state;
  final double textSize;
  final double fontSize;

  ClothesCard(
      {this.name,
      this.price,
      this.description,
      this.index,
      this.state,
      this.textSize,
      this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        //Button widget is redirecting to detail of product.
        onPressed: state,
        child: Card(
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  //Product's photo.
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset("images/ürün${index}_1.jpg"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      //Product's name
                      name,
                      style: TextStyle(
                        color: black,
                        fontSize: textSize,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    //Product's price
                    "$price TL",
                    style: TextStyle(color: LCWBlue, fontSize: fontSize),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
