import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const BallPage());

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: const Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          _ballNumber = Random().nextInt(5);
          print(_ballNumber);
        },
        child: Image.asset('images/ball1.png'),
      ),
    );
  }
}
