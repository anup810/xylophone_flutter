import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buidkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buidkey(color: Colors.red, soundNumber: 1),
              buidkey(color: Colors.orange, soundNumber: 2),
              buidkey(color: Colors.yellow, soundNumber: 3),
              buidkey(color: Colors.green, soundNumber: 4),
              buidkey(color: Colors.blue, soundNumber: 5),
              buidkey(color: Colors.indigo, soundNumber: 6),
              buidkey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
