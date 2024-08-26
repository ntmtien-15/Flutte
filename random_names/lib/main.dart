import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(CoolNameGeneratorApp());
}

class CoolNameGeneratorApp extends StatelessWidget {
    const CoolNameGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cool Name Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CoolNameGeneratorScreen(),
    );
  }
}

class CoolNameGeneratorScreen extends StatefulWidget {
  @override
  _CoolNameGeneratorScreenState createState() => _CoolNameGeneratorScreenState();
}

class _CoolNameGeneratorScreenState extends State<CoolNameGeneratorScreen> {
  final List<String> _adjectives = [
    'new', 'light', 'main', 'gray', 'quick', 'bright', 'fresh', 'soft'
  ];
  final List<String> _nouns = [
    'stay', 'stream', 'brake', 'pine', 'wave', 'stone', 'river', 'leaf'
  ];

  String _generatedName = '';

  void _generateName() {
    final random = Random();
    final adjective = _adjectives[random.nextInt(_adjectives.length)];
    final noun = _nouns[random.nextInt(_nouns.length)];

    setState(() {
      _generatedName = '$adjective$noun';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cool Name Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _generatedName,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateName,
              child: Text('Generate Cool Name'),
            ),
          ],
        ),
      ),
    );
  }
}
