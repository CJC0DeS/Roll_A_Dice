import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';
// import 'dart:math';
// import 'package:dice_app/styled_text.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(this.upcolr, this.dwncolr, {super.key});
// @attribute
  // int getRandomNumber() {
  //   // Create an instance of Random class
  //   final random = Random();

  //   // Generate a random integer between 0 and 99 (inclusive)
  //   int randomInt = random.nextInt(100); // 0 to 99

  //   return randomInt;
  // }

  final Color upcolr;
  final Color dwncolr;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color.fromARGB(255, 47, 227, 247),
            // Color.fromARGB(255, 59, 246, 168),
            upcolr,
            dwncolr,
            // Color.fromARGB(255, 0, 0, 0),
            // Color.fromARGB(255, 255, 255, 255),
          ],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
