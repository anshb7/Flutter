// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resethandler;
  Result(this.resultscore, this.resethandler);
  String get resultPhrase {
    String resultText;
    if (resultscore <= 50 && resultscore >= 40) {
      resultText = 'Keep it up!';
    }
    if (resultscore <= 40 && resultscore >= 30) {
      resultText = 'Great score!';
    }
    if (resultscore <= 30 && resultscore >= 20) {
      resultText = 'Good score!';
    } else if (resultscore <= 20) {
      resultText = 'Keep Trying Hard!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart quiz',
            ),
            textColor: Colors.black,
            onPressed: resethandler,
          )
        ],
      ),
    );
  }
}
