import 'package:flutter/material.dart';
import 'package:hello_world/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void showQuestion() {
    setState(() {
      questionIndex++;
    });
    print('Pergunta escolhida');
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?',
    ];

    return MaterialApp(
        title: 'Hello World',
        home: Scaffold(
            appBar: AppBar(title: Text('Ola mundo')),
            body: Column(children: <Widget>[
              Text(questions[questionIndex]),
              RaisedButton(
                child: Question("Pergunta 1"),
                onPressed: showQuestion,
              ),
              RaisedButton(
                child: Text("Pergunta 2"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("Pergunta 3"),
                onPressed: null,
              )
            ])));
  }
}
