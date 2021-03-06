import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerString;

  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answerString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerString),
      ),
    );
  }
}
