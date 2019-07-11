import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Green', 'Blue', 'Other']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Other']
    },
    {
      'questionText': 'What\'s your favorite brand?',
      'answers': ['Samsung', 'Apple', 'Huawei', 'Other']
    },
    {
      'questionText': 'Who\'s the most handsome person in the world?',
      'answers': ['Winkel', 'Winkel', 'Winkel', 'Winkel']
    },
  ];
  var _qIndex = 0;

  void _answerQuestion() {
    if (_qIndex < 3) {
      setState(() {
        _qIndex++;
      });
    } else {
      setState(() {
        _qIndex = 0;
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
        body: Column(
          children: <Widget>[
            Question(questions[_qIndex]['questionText']),

            // ... Operator takes things from a List and puts it within its parent List
            ...(questions[_qIndex]['answers'] as List<String>).map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
