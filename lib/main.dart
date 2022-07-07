import "package:flutter/material.dart";
import 'package:mc_order_app/result.dart';
import './quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //MyApp({Key? key}) : super(key: key);
  var _questionIndex = 0;

  var _questions = [
    {
      'Question': 'What is your favourite color?',
      'Answer': [
        {'text': 'Red', 'score': 100},
        {'text': 'Green', 'score': 10},
        {'text': 'Blue', 'score': 50},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'Question': 'Who is your favourite animal?',
      'Answer': [
        {'text': 'Lion', 'score': 100},
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Rabbit', 'score': 50},
      ]
    },
    {
      'Question': 'Who is your Teacher?',
      'Answer': [
        {'text': 'Imaran Shakir', 'score': 100},
        {'text': 'Khadim Ali', 'score': 98},
        {'text': 'Ali Raza Bhojani', 'score': 99},
        {'text': 'Others', 'score': 50}
      ]
    },
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
      //else {
      //   _questionIndex = 0;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
