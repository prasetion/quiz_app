import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var person1 = Person();

  var questions = [
    "what is your name?",
    "how is your age?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("question"),
            ElevatedButton(
              onPressed: null,
              child: Text("answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("answer 2"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}

class Person {
  String name;
  int age;

  Person({this.name = "prasetion", this.age = 28});
}
