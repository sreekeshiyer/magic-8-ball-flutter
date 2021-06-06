import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: MagicApp(),
        ),
      ),
    );

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int imgNumber = 1;

  void changeBallFace() {
    setState(() {
      imgNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: TextButton(
              child: Image.asset('images/ball$imgNumber.png'),
              onPressed: () {
                changeBallFace();
              },
            ),
          ),
        ),
      ],
    );
  }
}
