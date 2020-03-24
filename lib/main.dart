import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8 Ball',
      home: Magic8Ball(),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ask Me Anything",
          style: TextStyle(fontSize: 40),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Image.asset('images/ball$ballnumber.png'),
            onPressed: () {
              setState(() {
                ballnumber = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
