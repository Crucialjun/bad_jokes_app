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
              Container(
                margin: EdgeInsets.all(25),
                child: Text(
                  "What do you call a pencil with two erasers?",
                  style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
                child: Text(
                  "Pointless",
                  style: TextStyle(fontSize: 22.5, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: FloatingActionButton(
                        onPressed: null,
                        child: Icon(
                          Icons.arrow_left_rounded,
                          size: 60,
                        ),
                        backgroundColor: Colors.orange),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: FloatingActionButton(
                      onPressed: null,
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 60,
                      ),
                      backgroundColor: Colors.orange,
                    ),
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
