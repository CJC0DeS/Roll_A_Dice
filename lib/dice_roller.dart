import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // @override
  var activeButton = 'assets/dice-6.png';

  void btnClickHandler() {
    int randomInt = random.nextInt(6);
    int diceNo = randomInt + 1;
    setState(() {
      activeButton = 'assets/dice-$diceNo.png';
    });

    // print("hanji");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Text('Deliver features faster'),
        Image.asset(
          // 'assets/dice-1.png',
          activeButton,
          scale: 3,
        ),

        const SizedBox(height: 20),

        TextButton(
          style: ButtonStyle(
            // fixedSize: MaterialStateProperty.all(Size(width,height)),
            foregroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 255, 255, 255)),
          ),
          onPressed: btnClickHandler,
          child: const Text(
            'Click To Roll',
            style: TextStyle(fontSize: 25),
          ),
        ),
        // Text('Craft beautiful UIs'),
        // Expanded(
        //   child: FittedBox(
        //     child: FlutterLogo(),
        //   ),
        // ),
      ],
    );
  }
}
