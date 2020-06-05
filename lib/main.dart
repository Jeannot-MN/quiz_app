import 'package:flutter/material.dart';
import 'package:quizapp/result.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': "What is you favourite Color?",
      'answers': [
        {"value":"Black", "score": 3},
        {"value":"Red", "score": 5},
        {"value":"Blue", "score": 4},
        {"value":"White", "score": 7}
      ]
    },
    {
      'questionText': "What is you favourite Animal?",
      'answers': [
        {"value":"Snake", "score": 3},
        {"value":"Rabbit", "score": 5},
        {"value":"Dog", "score": 4},
        {"value":"Cat", "score": 7}
      ]
    },
    {
      'questionText': "What is you favourite learning platform?",
      'answers': [
        {"value":"Udacity", "score": 3},
        {"value":"Youtube", "score": 5},
        {"value":"Udemy", "score": 4},
        {"value":"Coursera", "score": 7}
      ]
    }
  ];

  var questionIndex = 0;
  var clicked = 0;
  var text = "You have not answered any question";
  var totalScore = 0;

  void reset(){
    setState((){
      totalScore = 0;
      clicked = 0;
      questionIndex =0;
      text = "You have not answered any question";
    });
  }

  void answerQuestion(int score) {
    setState(() {
      totalScore += score;
      questionIndex = questionIndex+1 ;
      clicked += 1;
      text = "Questions answered: " + clicked.toString() + " / " + questions.length.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("JMN Quiz App"),
          backgroundColor: Colors.blueGrey,
        ),
        body:questionIndex < questions.length
            ? Quiz(questions, questionIndex, answerQuestion, clicked, text)
            : Result(totalScore, reset),
      ),
    );
  }
}
