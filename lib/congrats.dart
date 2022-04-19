import 'package:flutter/material.dart';

class Congrats extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  // ignore: use_key_in_widget_constructors
  const Congrats(this.totalScore, this.resetQuiz);

  String get result {
    String val = 'you are awesome ...';
    if (totalScore < 12) {
      val = 'too low IQ.';
    } else if (totalScore < 18) {
      val = ' IQ. needed';
    } else if (totalScore < 24) {
      val = 'great man';
    } else {
      val = 'undisputed king';
    }
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      margin: const EdgeInsets.all(50),
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.greenAccent, width: 1),
      ),
      child: Column(
        children: [
          Text(
            result,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            '$totalScore',
            style: const TextStyle(
                fontSize: 45.0, color: Colors.white, fontFamily: 'bold'),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: const Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            onPressed: () => resetQuiz(),
          )
        ],
      ),
    );
  }
}
