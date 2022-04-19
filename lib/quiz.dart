import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerSelect;

  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerSelect});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Question("(Q) " + questions[questionIndex]['Question_Text'].toString()),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
                () => answerSelect(answer['Score']), answer['Text'].toString());
          },
        )
      ],
    );
  }
}
