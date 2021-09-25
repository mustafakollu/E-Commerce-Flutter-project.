import 'package:flutter/material.dart';
import 'package:flutter_application/Layout/drawer.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  static String routeName = "/";
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: MyDrawerBuild(),
      body: Image.asset("images/playstore.png"),
    );
  }
}
