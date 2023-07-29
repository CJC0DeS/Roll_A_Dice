import 'package:flutter/material.dart';

class StyledTextWid extends StatelessWidget {
  const StyledTextWid({super.key, var text}) : outputText = text;

  //or we can use
  // const StyledTextWid(this.text, {super.key}) ;
  // final String text;

  final String outputText;
  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255), fontSize: 28),
    );
  }
}
