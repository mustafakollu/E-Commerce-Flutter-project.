import 'package:flutter/material.dart';
import 'package:flutter_application/pages/homePage.dart';
import 'package:flutter_application/styles/color.dart';
import 'package:flutter_application/styles/icon.dart';

//this button redirect to home page
IconButton homeButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.pushNamedAndRemoveUntil(
          context, MyHomePage.routeName, (route) => false);
    },
    icon: Icon(
      homeIcon,
    ),
    iconSize: 30,
  );
}

//Customized button widget
Padding button1(String text, Color pColor, Color sColor, Color textColor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: pColor,
        shadowColor: sColor,
      ),
    ),
  );
}

//this button widget shows body size.
class HumanSizeButton extends StatelessWidget {
  final String text;
  final int selected;
  final int rank;
  final Function state;
  HumanSizeButton({this.text, this.selected, this.rank, this.state});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: state,
      child: Text(
        text,
        style: TextStyle(
          color: (selected == rank) ? amber : blue,
        ),
      ),
    );
  }
}

//this button widget changes photos
class ArrowButton extends StatelessWidget {
  final Function state;
  final IconData icon1;
  ArrowButton({this.state, this.icon1});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: state,
      icon: Icon(
        icon1,
        size: 40,
      ),
    );
  }
}
