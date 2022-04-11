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
      "answer": [
        {"text": "one", "score": 10},
        {"text": "two", "score": 0},
        {"text": "three", "score": 0}
      ],
    },
    {
      "questionText": "question2",
      "answer": [
        {"text": "red", "score": 10},
        {"text": "green", "score": 0},
        {"text": "blue", "score": 0}
      ],
    },
    {
      "questionText": "question3",
      "answer": [
        {"text": "coffe", "score": 10},
        {"text": "tea", "score": 0},
        {"text": "milk", "score": 0}
      ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void _aswerQuestion(int score) {
    totalScore += score;
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
            : Result(totalScore, resetQuiz),
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
