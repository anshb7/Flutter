import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selecthandler;
  // ignore: use_key_in_widget_constructors
  const Answer(this.selecthandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
          color: Colors.green,
          textColor: Colors.black,
          child: Text(answerText),
          onPressed: selecthandler),
    );
  }
}
