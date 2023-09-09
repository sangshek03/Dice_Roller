import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';

const beginAligment = Alignment.bottomLeft;
const endAligment = Alignment.topRight;

class GredientContainer extends StatelessWidget {
  const GredientContainer(this.firstColor, this.secondColor,
      {super.key}); // constructor
  // super key used to forward the argument to the super class

  // Additional Constructor function
  const GredientContainer.yellow({super.key})
      : firstColor = Colors.orange,
        secondColor = Colors.yellowAccent;

  final Color firstColor;
  final Color secondColor;

  @override
  // override is used to indicate that we are overridding from statlesswidge
  Widget build(context) {
    // build method -> you must write build method while inhirite from parent class
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secondColor,
          ],
          begin: beginAligment,
          end: endAligment,
        ),
      ),
        child:const Center(
        child: DiceRoller(),
      ),
    );
  }
}
