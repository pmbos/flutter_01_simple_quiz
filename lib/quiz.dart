import 'package:flutter/material.dart';

import './answer_list.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function onAnswerPressed;

  Quiz(
      {@required this.questions,
      @required this.onAnswerPressed,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        AnswerList(
          questions[questionIndex]['answers'] as List<Map<String, Object>>,
          onAnswerPressed,
        ),
      ],
    );
  }
}
