import 'package:flutter/material.dart';
import 'dart:math';
import 'package:first_app/give_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerProgram();
  }
}

final randomizer = Random();

class _DiceRollerProgram extends State<DiceRoller> {
  //  _DiceRollerProgram();
  var number = 2;

  void diceButton() {
    // function/method
    setState(() {
      // number = Random().nextInt(6) + 1;
      number = randomizer.nextInt(6) + 1; // random use krne se baar baar memory m store ho ra ta which is not optimal so i make randamizer global variable jisse bss ek baar store ho or usse baar baar reuse kr sake
      // print('hello');
    });
  }

  @override
  Widget build(context) {
    // In this Column there is two items, Image and Button
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const GiveText('Dice Rolling Is Fun'),
        const SizedBox(
          height: 100),
        Image.asset('assets/dice-images/dice-$number.png', width: 200),
        ElevatedButton(
          onPressed: diceButton,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(5),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              textStyle: const TextStyle(
                fontSize: 18,
              ),
              backgroundColor: const Color.fromARGB(255, 247, 46, 6)),
          child: const Text("Roll-Dice"),
        )
      ],
    );
  }
}
