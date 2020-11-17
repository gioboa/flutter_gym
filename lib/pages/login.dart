import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State createState() => new LoginState();
}

class LoginState extends State<Login> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Welcome page"),
          backgroundColor: Colors.red,
        ),
        body: new Stack(fit: StackFit.expand, children: <Widget>[
          new Theme(
            data: new ThemeData(
                brightness: Brightness.dark,
                inputDecorationTheme: new InputDecorationTheme(
                  // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                  labelStyle:
                      new TextStyle(color: Colors.tealAccent, fontSize: 25.0),
                )),
            isMaterialAppTheme: true,
            child: SingleChildScrollView(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Form(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                                labelText: "Enter Email",
                                fillColor: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.text,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                          ),
                          new MaterialButton(
                            height: 50.0,
                            minWidth: 150.0,
                            color: Colors.green,
                            splashColor: Colors.teal,
                            textColor: Colors.white,
                            child: new Text("Login"),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
