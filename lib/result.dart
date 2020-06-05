import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final totalScore;
  final Function replay;

  Result(this.totalScore, this.replay);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              "You have answered all questions ",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue
              ),
            ),
            Text(
              "Your total score is: "+totalScore.toString(),
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey
              ),
            ),
            RaisedButton(
              child: Text(
                "Play again",
              ),
              onPressed: replay,
            )
          ]

        ),
      ),
    );
  }
}
