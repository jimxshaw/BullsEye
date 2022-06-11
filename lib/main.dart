import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
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
  bool _alertIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello BullsEye',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            TextButton(
              onPressed: () {
                _alertIsVisible = true;
                _showAlert(context);
              },
              child: const Text(
                'Hit Me!',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    var okButton = TextButton(
      child: const Text('Great!'),
      onPressed: () {
        // Dismissed the popup alert.
        Navigator.of(context).pop();
        _alertIsVisible = false;
      },
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Hello BullsEye'),
            content: const Text('First popup!'),
            actions: [okButton],
            elevation: 5,
          );
        });
  }
}
