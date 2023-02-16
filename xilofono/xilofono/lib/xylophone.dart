import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  List<Audio> _notes = [
    Audio.load('assets/sounds/assets_note1.wav'),
    Audio.load('assets/sounds/assets_note2.wav'),
    Audio.load('assets/sounds/assets_note3.wav'),
    Audio.load('assets/sounds/assets_note4.wav'),
    Audio.load('assets/sounds/assets_note5.wav'),
    Audio.load('assets/sounds/assets_note6.wav'),
    Audio.load('assets/sounds/assets_note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(
              Color.fromARGB(255, 255, 255, 255),
              0,
            ),
            buildKey(Color.fromARGB(255, 231, 126, 28), 1),
            buildKey(Color.fromARGB(255, 103, 94, 11), 2),
            buildKey(Color.fromARGB(255, 5, 231, 12), 3),
            buildKey(Color.fromARGB(255, 14, 63, 241), 4),
            buildKey(Color.fromARGB(255, 220, 15, 239), 5),
            buildKey(Color.fromARGB(255, 105, 22, 3), 6),
          ],
        ),
      ),
    );
  }

  Widget buildKey(Color color, int noteIndex) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          _notes[noteIndex].play();
        },
        child: Container(),
      ),
    );
  }
}
