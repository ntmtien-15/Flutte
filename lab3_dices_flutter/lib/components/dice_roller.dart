

import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
} 

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 1;
  var currentDiceRol2 = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      currentDiceRol2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}