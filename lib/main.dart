import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 3,
        },
        {
          'text': 'White',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {
          'text': 'Rabbit',
          'score': 3,
        },
        {
          'text': 'Snake',
          'score': 11,
        },
        {
          'text': 'Elephant',
          'score': 5,
        },
        {
          'text': 'Lion',
          'score': 9,
        },
      ],
    },
    {
      'questionText': 'Who is your favourite instructor?',
      'answers': [
        {
          'text': 'Pascal',
          'score': 1,
        },
        {
          'text': 'Max',
          'score': 1,
        },
        {
          'text': 'Alina',
          'score': 1,
        },
        {
          'text': 'Marwin',
          'score': 1,
        },
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _onAnswerPressed(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                onAnswerPressed: _onAnswerPressed,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
