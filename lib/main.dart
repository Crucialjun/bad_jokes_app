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
    return MyAppState();
  }
}

class MyAppState extends State {
  var jokes = [
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

  var jokeIndex = 0;

  void changeJokeIndex(String direction) {
    if (direction == "next") {
      if (jokeIndex != jokes.length - 1) {
        setState(() {
          jokeIndex++;
        });
      }
    } else if (direction == "prev") {
      if (jokeIndex != 0) {
        setState(() {
          jokeIndex--;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(jokes[jokeIndex]['question'] as String),
              Answer(jokes[jokeIndex]['answer'] as String),
              Buttons(changeJokeIndex)
            ],
          ),
        ),
      ),
    );
  }
}
