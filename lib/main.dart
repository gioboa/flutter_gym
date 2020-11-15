import 'package:flutter/material.dart';
import 'package:flutter_gym/drawer.dart';

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
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter gym"),
            backgroundColor: Colors.red,
          ),
          drawer: MyDrawer(),
          body: Body(),
          bottomNavigationBar: Container(
            color: Colors.green,
            height: 50,
          )),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size.height;
    return new Column(
      children: <Widget>[
        Container(
          height: device / 2,
          alignment: Alignment.center,
          child: Text(
            "31",
            style: TextStyle(fontSize: 50),
          ),
        ),
        Expanded(
            flex: 1,
            child: Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: new Container(
                          color: Colors.grey,
                        )),
                    Expanded(
                        flex: 1,
                        child: new Text("21",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40)))
                  ],
                ))),
        Expanded(
            flex: 1,
            child: new Text("2",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 40)))
      ],
    );
  }
}
