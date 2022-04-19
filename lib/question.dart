import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.cyanAccent,
            width: 3,
          ),
        ),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(12),
        child: Text(
          questionText,
          style: const TextStyle(fontSize: 20, color: Colors.orange),
          textAlign: TextAlign.center,
        ));
  }
}
