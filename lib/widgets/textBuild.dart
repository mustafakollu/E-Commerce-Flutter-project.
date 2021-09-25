import 'package:flutter/material.dart';

//Text widget of product page
Center productText(String name, double textSize, Color textColor) {
  return Center(
    child: Text(
      name,
      style: TextStyle(fontSize: textSize, color: textColor),
    ),
  );
}

//Text widget of person
Text personInfo(String info) {
  return Text(
    info,
    style: TextStyle(
      fontSize: 15,
    ),
  );
}
