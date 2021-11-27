// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:bad_jokes_app/answer.dart';
import 'package:bad_jokes_app/buttons.dart';
import 'package:bad_jokes_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _jokes = [
    {
      'question': "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      'question': "What's a pencil with two erasers called'?",
      "answer": "Pointless"
    },
    {
      'question': "Why is the calendar always scared",
      "answer": "Because its days are numbered"
    },
    {'question': "What do you call a fish with no eye?", "answer": "Fsh"},
    {
      'question': "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      'question': "What does a baby computer call its father?",
      "answer": "Data"
    },
  ];

  var _jokeIndex = 0;

  void changeJokeIndex(String direction) {
    if (direction == "next") {
      if (_jokeIndex != _jokes.length - 1) {
        setState(() {
          _jokeIndex++;
        });
      }
    } else if (direction == "prev") {
      if (_jokeIndex != 0) {
        setState(() {
          _jokeIndex--;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bad Jokes"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(_jokes[_jokeIndex]['question'] as String),
              Answer(_jokes[_jokeIndex]['answer'] as String),
              Buttons(changeJokeIndex)
            ],
          ),
        ),
      ),
    );
  }
}
