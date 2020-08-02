import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerPressed;
  final String answerText;
  Answer(this.answerText, this.answerPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: answerPressed,
        color: Colors.blue,
      ),
    );
  }
}
