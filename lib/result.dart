import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resulScore;
  final Function resetHandler;

  Result(this.resulScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resulScore <= 10) {
      resultText = "You are awesome and innocent";
    } else {
      resultText = "Good job!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("restart quiz"),
          ),
        ],
      ),
    );
  }
}
