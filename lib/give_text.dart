import 'package:flutter/material.dart';

class GiveText extends StatelessWidget {
  const GiveText(this.inputText, {super.key});

  final String inputText;

  @override
  Widget build(context) {
    return Text(
      inputText,
      style: const TextStyle(
        color: Color.fromARGB(255, 27, 8, 2),
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
