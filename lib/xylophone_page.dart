import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: implementation_imports
import 'package:audioplayers/src/audio_cache.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildKey(
      {required Color color,
      required int soundNumber,
      required String levelMark}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(
          levelMark,
          style: const TextStyle(color: Colors.white),
        ),
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
              buildKey(color: Colors.red, soundNumber: 1, levelMark: '도'),
              buildKey(color: Colors.orange, soundNumber: 2, levelMark: '레'),
              buildKey(color: Colors.yellow, soundNumber: 3, levelMark: '미'),
              buildKey(color: Colors.green, soundNumber: 4, levelMark: '파'),
              buildKey(color: Colors.teal, soundNumber: 5, levelMark: '솔'),
              buildKey(color: Colors.blue, soundNumber: 6, levelMark: '라'),
              buildKey(color: Colors.purple, soundNumber: 7, levelMark: '시'),
            ],
          ),
        ),
        //  child: const Text('Click me'),
      ),
    );
  }
}
