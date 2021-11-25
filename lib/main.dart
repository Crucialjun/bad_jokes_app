// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("What do you call a pencil with two erasers?"),
              Text("Pointless"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: null,
                    child: Icon(Icons.arrow_left_rounded),
                  ),
                  FloatingActionButton(
                    onPressed: null,
                    child: Icon(Icons.arrow_right_rounded),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
