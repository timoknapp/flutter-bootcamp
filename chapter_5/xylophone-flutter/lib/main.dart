import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int soundNr) {
    player.play('note$soundNr.wav');
  }

  Expanded buildKey({int soundNr, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNr);
        },
        color: color,
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNr: 1, color: Colors.red),
              buildKey(soundNr: 2, color: Colors.orange),
              buildKey(soundNr: 3, color: Colors.yellow),
              buildKey(soundNr: 4, color: Colors.green),
              buildKey(soundNr: 5, color: Colors.teal),
              buildKey(soundNr: 6, color: Colors.blue),
              buildKey(soundNr: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
