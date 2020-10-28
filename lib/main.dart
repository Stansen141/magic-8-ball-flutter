import 'package:flutter/material.dart';

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
  void askBall() {
    print('I love Meghan');
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
            image: AssetImage('images/ball1.png'),
          ),
          onPressed: askBall,
        ),
      ),
    );
  }
}
