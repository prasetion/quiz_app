import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]["questionText"] as String),
          ...(questions[questionIndex]["answer"] as List<String>).map((answer) {
            return Answer(answerQuestion, answer);
          }).toList()
        ],
      ),
    );
  }
}
