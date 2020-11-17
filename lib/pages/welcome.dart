import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome page"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Text("Welcome"),          
          ElevatedButton(
            onPressed: () {              
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          )
        ],
      ),
    );
  }
}
