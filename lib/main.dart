import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';

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

  var questions = [
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
      if (questions.length - 1 == _questionIndex) {
        _questionIndex = 0;
      } else {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['Question'] as String),

            ...(questions[_questionIndex]['Answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            })

            // ElevatedButton(
            //     onPressed: _answerQuestion, child: const Text("Answer No 1")),
            // ElevatedButton(
            //     onPressed: () => debugPrint("Answer Chosend 2"),
            //     child: const Text("Answer No 2")),
            // ElevatedButton(
            //     onPressed: () {
            //       debugPrint("Answer Chosend 3");
            //     },
            //     child: const Text("Answer No 3")),
          ],
        ),
      ),
    );
  }
}
