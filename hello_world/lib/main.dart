import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?'
    ];


    return MaterialApp(
        title: 'Hello World',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ola mundo')
          ),
          body: Column(
            children: <Widget>[
              Text(questions[0]),
              RaisedButton(
                child: Text("Pergunta 1"),
                onPressed: null
              ),
              RaisedButton(
                child: Text("Pergunta 2"),
                onPressed: null
              ),
              RaisedButton(
                child: Text("Pergunta 3"),
                onPressed: null
              )
            ]
            )
        )
      );
  }
}
