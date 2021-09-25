import 'package:flutter/material.dart';
import 'package:flutter_application/pages/listPage.dart';
import 'package:flutter_application/pages/loginPage.dart';
import 'package:flutter_application/styles/color.dart';
import 'package:flutter_application/styles/icon.dart';
import 'package:flutter_application/widgets/textBuild.dart';

class MyDrawerBuild extends StatefulWidget {
  const MyDrawerBuild({Key key}) : super(key: key);

  @override
  _MyDrawerBuildState createState() => _MyDrawerBuildState();
}

//Drawer Widget of all project
class _MyDrawerBuildState extends State<MyDrawerBuild> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    defaultPersonIcon,
                    size: 50,
                  ),
                  personInfo("Merhaba, Mustafa Kollu"),
                  personInfo("MUSTAFA.KOLLU@lcwaikiki.com"),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: lightBlue,
            ),
          ),
          drawerItem(context, listIcon, 'Clothes', ListMenuPage.routeName),
          Divider(
            height: 1,
            thickness: 1,
          ),
          drawerItem(context, logoutIcon, 'Logout', LoginPage.routeName),
        ],
      ),
    );
  }

  //Drawer List Eleman
  ListTile drawerItem(
      BuildContext context, IconData icon, String name, String route) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: () => Navigator.pushNamed(context, route),
    );
  }
}
