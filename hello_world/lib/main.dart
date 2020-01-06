import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Ola mundo')),
            body: ListView(
              children: <Widget>[
                Container(
                  child: const Center(
                      child: Text(
                    'Olá',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100.0),
                  )),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 100.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.yellow,
                  size: 100.0,
                )
              ],
            )));
  }
}
