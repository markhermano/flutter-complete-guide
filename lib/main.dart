import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answer 2 chosen'),),
          RaisedButton(child: Text('Answer 3'), onPressed: () {
            print('wow');
            print('answer 3 chosen');
          },)

        ],
      ),
    ));
  }
}
