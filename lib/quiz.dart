import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{
  final questions;
  final  questionIndex;
  final Function answerQuestion;
  final clicked;
  final text;

  Quiz(this.questions, this.questionIndex, this.answerQuestion, this.clicked, this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<Map<String , Object>>)
              .map((answer) {
            return Answer(() =>answerQuestion(answer['score']), answer['value'] );
          }).toList(),
          Container(
            child: Text(
              text ,
              style: TextStyle(
                fontSize: 20,
                color: clicked == 0 ?  Colors.red: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}