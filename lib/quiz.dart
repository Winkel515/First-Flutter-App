import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List answers;
  final Function answerQuestion;

  Quiz({
    @required this.question,
    @required this.answers,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question),

        // ... Operator takes things from a List and puts it within its parent List
        ...(answers as List<Map>).map((answer) {
          return Answer(answer['text'], () => answerQuestion(answer['score']));
        }).toList()
      ],
    );
  }
}
