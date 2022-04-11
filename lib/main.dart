import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import 'quiz.dart';
import "result.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = [
    {
      "questionText": "question1",
      "answer": ["one", "two", "three"],
    },
    {
      "questionText": "question2",
      "answer": ["red", "green", "blue"],
    },
    {
      "questionText": "question3",
      "answer": ["coffe", "tea", "milk"],
    },
  ];

  var questionIndex = 0;
  void _aswerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    if (questionIndex < questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: _aswerQuestion,
              )
            : Result(),
      ),
    );
  }
}

class Person {
  String name;
  int age;

  Person({this.name = "prasetion", this.age = 28});

  Person.baby({this.name = "tio", this.age = 5});

  Person.veryOld(this.name) {
    age = 60;
  }
}
