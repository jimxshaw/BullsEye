import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Bullseye',
      home: GamePage(),
    ),
  );
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('BullsEye'),
          ],
        ),
      ),
    );
  }
}
