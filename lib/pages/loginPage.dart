import 'package:flutter/material.dart';
import 'package:flutter_application/Layout/drawer.dart';
import 'package:flutter_application/styles/color.dart';
import 'package:flutter_application/styles/icon.dart';
import 'package:flutter_application/widgets/buttonBuild.dart';

class LoginPage extends StatefulWidget {
  static String routeName = "/loginpage";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool privacy = true; //this variable uses for obsecure
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawerBuild(),
      appBar: AppBar(
        actions: [
          homeButton(context),
        ],
        title: Text("Login Page"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset("images/lcw_logo.jpg"),
          ),
          //User Name Input Area
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          //Password Input Area
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                TextFormField(
                  obscureText: privacy,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        privacy = !privacy;
                      });
                    },
                    icon: Icon(obsecureIcon),
                  ),
                ),
              ],
            ),
          ),
          //Password Recovery Link
          Center(
            child: InkWell(
              child: Text(
                "Password Recovery",
                style: TextStyle(color: LCWBlue),
              ),
              onTap: () => null,
            ),
          ),
          //Button1 widget at buttonbuild
          Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: button1("Login", LCWBlue, white, white)),
          )
        ],
      ),
    );
  }
}
