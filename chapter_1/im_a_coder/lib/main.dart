import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("I'm a coder!"),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/iam_a_coder.png"),
          ),
        ),
      ),
    ),
  );
}
