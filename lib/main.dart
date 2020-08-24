import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int trackNumber) {
    final player = AudioCache();
    player.play('note$trackNumber.wav');
  }

  Widget buildKey({Color buttonColor, int tracknumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(tracknumber);
        },
        color: buttonColor,
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
            children: <Widget>[
              buildKey(buttonColor: Colors.red, tracknumber: 1),
              buildKey(buttonColor: Colors.orange, tracknumber: 2),
              buildKey(buttonColor: Colors.yellow, tracknumber: 3),
              buildKey(buttonColor: Colors.green, tracknumber: 4),
              buildKey(buttonColor: Colors.teal, tracknumber: 5),
              buildKey(buttonColor: Colors.blue, tracknumber: 6),
              buildKey(buttonColor: Colors.deepPurple, tracknumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
