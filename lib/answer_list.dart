import 'package:flutter/material.dart';

import './answer.dart';

class AnswerList extends StatelessWidget {
  final List<Map<String, Object>> answers;
  final Function onAnswerPressed;

  AnswerList(this.answers, this.onAnswerPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...answers.map((answer) {
          return Answer(
            answer['text'],
            () => onAnswerPressed(answer['score']),
          );
        }).toList(),
      ],
    );
  }
}
