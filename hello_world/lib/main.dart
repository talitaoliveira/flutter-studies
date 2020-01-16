import 'package:flutter/material.dart';
import 'package:hello_world/question.dart';
import 'package:hello_world/option.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalPoints = 0;

  void answerQuestion(int value) {
    setState(() {
      questionIndex++;
    });
    print('Pergunta escolhida');
    print(questionIndex);
    totalPoints += value;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'Qual sua cor favorita?',
        'answers': [
          {'name': 'Preto', 'value': 1},
          {'name': 'Azul', 'value': 2},
          {'name': 'Vermelho', 'value': 3}
        ]
      },
      {
        'question': 'Qual seu animal favorito?',
        'answers': [
          {'name': 'Cachorro', 'value': 1},
          {'name': 'Gato', 'value': 2},
        ]
      }
    ];

    return MaterialApp(
        title: 'Hello World',
        home: Scaffold(
          appBar: AppBar(title: Text('Ola mundo')),
          body: questionIndex < questions.length
              ? Column(children: <Widget>[
                  Question(questions[questionIndex]['question']),
                  ...(questions[questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((question) {
                    return OptionQuestion(
                        () => answerQuestion(question['value']),
                        question['name']);
                  }),
                ])
              : Container(
                  width: double.infinity,
                  child: Text(
                    totalPoints.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50),
                  ),
                ),
        ));
  }
}

// usar botao flutuante para resetar os valores
