import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currDiceRoll = 1;

  void rollDice() {
    setState(() {
      currDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currDiceRoll.png',
          width: 200,
        ),
        //const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                // either use padding or SizedBox commented above
                top: 20,
              ),
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
