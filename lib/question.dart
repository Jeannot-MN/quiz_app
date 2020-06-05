import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        child: Text(
          this.questionText,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
    );
  }
}
