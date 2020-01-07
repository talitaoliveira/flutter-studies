import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questionText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
