import 'package:flutter/material.dart';
import 'package:lab3_dices_flutter/components/gradient_container.dart';
import 'dart:math';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: GradientContainer(
//              Colors.purple, 
//              Colors.deepPurple,
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('DiceApp'),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void dicee() {
    setState (
      () {
        rightDiceNumber = Random().nextInt(6) + 1;
        leftDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build (BuildContext context) {
    return Center(
      child: Row (
        children: <Widget>[
          Expanded(
            child: TextButton (
              onPressed: () {
                dicee();
              },
              child: Image.asset('assets/images/dice$leftDiceNumber.png')
            ),
          ),
          Expanded(
            child: TextButton (
              onPressed: () {
                dicee();
              },
              child: Image.asset('assets/images/dice$rightDiceNumber.png')
            ),
          ),
        ],
      )
    );
  }
}