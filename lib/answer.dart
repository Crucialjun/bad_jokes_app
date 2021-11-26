// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;

  Answer(this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
      child: Text(
        answer,
        style: TextStyle(fontSize: 22.5, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
