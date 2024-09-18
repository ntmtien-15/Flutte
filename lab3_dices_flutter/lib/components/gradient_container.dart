import 'package:flutter/material.dart';
import 'package:lab3_dices_flutter/components/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: [
                color1, color2
              ],
             ),
          ),
          child: const Center(
            child: DiceRoller()
            ),
          
      );
  }
}