import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dice_roller.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/dice-$currentDiceRoll.png',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 22),
              ),
              child: const Text("Roll Dice"),
            ),
          ),
        ],
      ),
    );
  }
}
