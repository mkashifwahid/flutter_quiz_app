import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(children: const [
          Text("Question No 1"),
          ElevatedButton(onPressed: null, child: Text("Answer No 1")),
          ElevatedButton(onPressed: null, child: Text("Answer No 2")),
          ElevatedButton(onPressed: null, child: Text("Answer No 3")),
        ]),
      ),
    );
  }
}
