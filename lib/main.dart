import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State <MyApp> {
  var questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite colour?",
      "What is your favourite animal?"
    ];

    var color = Colors.white70;

    void answerQuestion(){
      setState(() {
        questionIndex = questionIndex == 1 ? 0 : 1;
      });
    }


    return MaterialApp(
        home: Scaffold(
          backgroundColor: color,
          appBar: AppBar(
            title: Text("Hello Jeannot"),
            backgroundColor: Colors.blueGrey,
          ),

          body: Center(
            child:Column(
                children: [
                  Question(questions[questionIndex]),
                  RaisedButton(child:Text("Answer1"), onPressed: answerQuestion),
                  RaisedButton(child:Text("Answer2"), onPressed: ()=>{print("Jeannot!")}),
                  RaisedButton(child:Text("Answer3"), onPressed: null),
                ]
            ) ,
          )
        )
    );
  }
}
