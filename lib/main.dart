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
      'Answer': ['Red', 'Green', 'Blue', 'White']
    },
    {
      'Question': 'Who is your favourite animal?',
      'Answer': ['Lion', 'Cat', 'Dog', 'Rabbit']
    },
    {
      'Question': 'Who is your Teacher?',
      'Answer': ['Imaran Shakir', 'Khadim Ali', 'Ali Raza Bhojani', 'Others']
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
