// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);
  final int _result;
  final VoidCallback _resetHandler;

  // ignore: use_key_in_widget_constructors
  const Result(this._result, this._resetHandler);

  String get resultDescription {
    String resultText = 'Hey! You did it.$_result';
    if (_result <= 100) {
      resultText = 'You are awesome and innocent !!!$_result';
    } else if (_result <= 150) {
      resultText = 'You are likeable personality !!!$_result';
    } else if (_result <= 200) {
      resultText = 'You are Strange !!!$_result';
    } else if (_result <= 250) {
      resultText = 'You should try to be better !!!$_result';
    } else {
      resultText = 'You are so bad !!!$_result';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultDescription,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: _resetHandler,
            child: const Text('Restart Quiz', style: TextStyle(fontSize: 36)),
          )
        ],
      ),
    );
  }
}
