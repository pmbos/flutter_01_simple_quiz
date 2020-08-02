import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultingScore;
  final Function resetQuiz;

  Result(this.resultingScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultingScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultingScore <= 12) {
      resultText = 'Pretty likable!';
    } else if (resultingScore <= 16) {
      resultText = 'You are strange...';
    } else {
      resultText = 'You are soooo bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('Restart quiz!'),
            textColor: Colors.blue,
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
