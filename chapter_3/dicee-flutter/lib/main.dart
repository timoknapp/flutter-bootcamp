import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = Random.secure().nextInt(6) + 1;
  int dice2 = Random.secure().nextInt(6) + 1;

  void rollTheDice() {
    setState(() {
      dice1 = Random.secure().nextInt(6) + 1;
      dice2 = Random.secure().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$dice1.png'),
              onPressed: () {
                rollTheDice();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$dice2.png'),
              onPressed: () {
                rollTheDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
