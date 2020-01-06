import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello World',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ola mundo')
          ),
          body: Column(
            children: <Widget>[
              Text('Pergunta'),
              RaisedButton(
                child: Text("Pergunta 1"),
                onPressed: null
              ),
              RaisedButton(
                child: Text("Botao 1"),
                onPressed: null
              ),
              RaisedButton(
                child: Text("Botao 1"),
                onPressed: null
              )
            ]
            )
        )
      );
  }
}
