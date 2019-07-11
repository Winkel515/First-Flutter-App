import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 0},
        {'text': 'Other', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Cat', 'score': 2},
        {'text': 'Dog', 'score': 0},
        {'text': 'Other', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your favorite brand?',
      'answers': [
        {'text': 'Samsung', 'score': 0},
        {'text': 'Apple', 'score': 2},
        {'text': 'Huawei', 'score': 4},
        {'text': 'Other', 'score': 6}
      ]
    },
    {
      'questionText': 'Who\'s the most handsome?',
      'answers': [
        {'text': 'Winkel', 'score': 0},
        {'text': 'Winkel', 'score': 0},
        {'text': 'Winkel', 'score': 0},
        {'text': 'Winkel', 'score': 0},
      ]
    },
  ];
  var _totalScore = 0;
  var _qIndex = 0;

  void _answerQuestion(int score) {
    if (_qIndex < _questions.length - 1) {
      setState(() {
        _qIndex++;
        _totalScore += score;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My New App'),
          ),
          body: _qIndex < _questions.length - 1
              ? Quiz(
                  question: _questions[_qIndex]['questionText'],
                  answers: _questions[_qIndex]['answers'],
                  answerQuestion: _answerQuestion,
                )
              : Result(_totalScore)),
    );
  }
}
