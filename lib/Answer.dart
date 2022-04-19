// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.cyan[300],
        textColor: Colors.white,
        child: Text(
          answer,
        ),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
