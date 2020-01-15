import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OptionQuestion extends StatelessWidget {
  final Function selectedHandler;
  final String optionText;

  OptionQuestion(this.selectedHandler,this.optionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(this.optionText),
          onPressed: selectedHandler,
          color: Colors.blue,
        ));
  }
}
