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
          body: Body(),
          bottomNavigationBar: new Container(
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
        new Container(
            height: device / 2,
            color: Colors.orange,
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
                        child: new Text("2",
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
