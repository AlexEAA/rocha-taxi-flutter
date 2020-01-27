import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  State<SideMenu> createState() => _SideMenu();
}

class _SideMenu extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
  return Drawer(elevation: 16.0,
  child: Column(
    children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text("Александр"),
        accountEmail: Text("seoinetru@gmail.com"),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text("АЕ"),
        ),
        otherAccountsPictures: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text("ae"),
          )
        ],
      ),
      ListTile(
        title: new Text("Профиль"),
        leading: new Icon(Icons.person),
        onTap: () {Navigator.pushNamed(context, "/settings");},
      ),
     // Divider(
     //   height: 0.1,
     // ),
      ListTile(
        title: new Text("Настройки"),
        leading: new Icon(Icons.settings),
         onTap: () {Navigator.pushNamed(context, "/settings");},
      ),
      ListTile(
        title: new Text("Оплата"),
        leading: new Icon(Icons.payment),
        onTap: () {Navigator.pushNamed(context, "/settings");},
      ),
      ListTile(
        title: new Text("Еще"),
        leading: new Icon(Icons.rate_review),
        onTap: () {Navigator.pushNamed(context, "/settings");},
      )
    ],
  ),
  ); 
  }
}
