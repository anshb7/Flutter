import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionindex;
  final Function answerquestion;
  final List<Map<String, Object>> questions;
  // ignore: use_key_in_widget_constructors
  const Quiz({
    @required this.questionindex,
    @required this.answerquestion,
    @required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]['questiontext'],
        ),
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answerquestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
