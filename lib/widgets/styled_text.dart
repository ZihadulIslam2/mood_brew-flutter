import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double fontSize;

  const StyledText(this.text, {super.key, this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.brown[800],
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
      textAlign: TextAlign.center,
    );
  }
}
