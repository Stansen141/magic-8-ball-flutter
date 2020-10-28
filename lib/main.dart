import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var intNum = 1;

  void askBall() {
    setState(() {
      intNum = Random().nextInt(5) + 1;
      print('I love Meghan!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
        title: Text(
          'Ask Me a Question',
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
      body: Center(
        child: FlatButton(
          child: Image(
            image: AssetImage('images/ball$intNum.png'),
          ),
          onPressed: askBall,
        ),
      ),
    );
  }
}
