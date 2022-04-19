// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:learn/congrats.dart';
import './quiz.dart';
import './congrats.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final _questionList = [
    {
      'Question_Text': 'What is your favourite Color?',
      'answer': [
        {'Text': 'Black', 'Score': 2},
        {'Text': 'Blue', 'Score': 4},
        {'Text': 'Red', 'Score': 8},
        {'Text': 'Green', 'Score': 3},
      ]
    },
    {
      'Question_Text': 'What is your favourite food?',
      'answer': [
        {'Text': 'Samosa', 'Score': 12},
        {'Text': 'Bread', 'Score': 16},
        {'Text': 'Chatni-chhola', 'Score': 3},
        {'Text': 'Milk', 'Score': 4},
      ]
    },
    {
      'Question_Text': 'What is your favourite number?',
      'answer': [
        {'Text': '25', 'Score': 1},
        {'Text': '10', 'Score': 6},
        {'Text': '13', 'Score': 3},
        {'Text': '7', 'Score': 7},
      ]
    },
  ];

  var _totalScore = 0;
  var _questionIndex = 0;

  void _reset() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerSelect(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HELP',
      home: Scaffold(
        body: _questionIndex < _questionList.length
            ? Quiz(
                answerSelect: _answerSelect,
                questionIndex: _questionIndex,
                questions: _questionList,
              )
            : Center(
                child: Congrats(_totalScore, _reset),
              ),
      ),
    );
  }
}
