import 'package:flutter/material.dart';

import '../pages/login.dart';
import '../pages/welcome.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: AssetImage("assets/images/wallpaper.jpg"),
                  fit: BoxFit.fitWidth,
                )),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Welcome()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Login'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              )
            },
          ),
        ],
      ),
    );
  }
}
