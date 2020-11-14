import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fluttergram",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              title: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(title: TextStyle(color: Colors.black))),
      home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.red,
          ),
          body: new Row(
            children: <Widget>[
              Expanded(flex: 1, child: Icon(Icons.play_arrow)),
              Expanded(
                  flex: 1,
                  child: new Text("2",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 40)))
            ],
          ),
          bottomNavigationBar: new Container(
            color: Colors.green,
            height: 50,
          )),
    );
  }
}
