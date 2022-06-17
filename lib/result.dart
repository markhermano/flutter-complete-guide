import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 10) {
      resultText = 'Awesome!';
    } else if (resultScore >= 8) {
      resultText = 'Cool!';
    } else {
      resultText = 'Good!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
      FlatButton(
        onPressed: resetHandler,
        child: Text('Restart Quiz!'),
        textColor: Colors.blue,
      )
    ]));
  }
}
