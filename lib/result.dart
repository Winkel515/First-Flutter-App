import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function restartQuiz;

  Result(this._resultScore, this.restartQuiz);

  String get resultPhrase {
    var resultText;
    if (_resultScore <= 5) {
      resultText = 'You\'re awesome';
    } else if (_resultScore <= 10) {
      resultText = 'You\'re ok';
    } else {
      resultText = 'You\'re disgusting';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('Aww, you really think that I\'m that handsome? 🥰'),
          RaisedButton(
            child: Text('Retry'),
            onPressed: restartQuiz,
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
