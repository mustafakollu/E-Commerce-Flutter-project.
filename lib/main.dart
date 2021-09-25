import 'package:flutter/material.dart';
import 'package:flutter_application/pages/listPage.dart';
import 'package:flutter_application/pages/homePage.dart';
import 'package:flutter_application/pages/loginPage.dart';
import 'package:flutter_application/styles/color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // It removes the debug text in the upper right corner of the screen.

      initialRoute: MyHomePage.routeName,

      routes: {
        MyHomePage.routeName: (context) => MyHomePage(
              // Home Page Route
              title: 'LC Waikiki Home',
            ),
        ListMenuPage.routeName: (context) =>
            ListMenuPage(), //List Menu Page Route
        LoginPage.routeName: (context) => LoginPage(), //Login Page Route
      },

      title: appTitle,

      theme: ThemeData(
        //theme of app
        primaryColor: white, //app bar color of all pages
        backgroundColor: white, //background color of all pages
      ),
    );
  }
}
