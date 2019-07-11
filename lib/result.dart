import 'package:flutter/material.dart';

import './question.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  Result(this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Question(
        'You\'ve completed the Quiz with a score of $_totalScore',
      ),
    );
  }
}
