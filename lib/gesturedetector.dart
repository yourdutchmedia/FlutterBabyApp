import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

AudioCache player = new AudioCache();

class GesDetector extends StatelessWidget {
  GesDetector();

  String _debugString = 'Origenele tekst';
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!pressed) {
          player.play('ShhhSoundeffect.mp3');
          pressed = true;
        } else if (pressed) {
          player.clear('ShhhSoundeffect.mp3');
          pressed = false;
          _debugString = 'onTap werkt!!!!!';
          print(_debugString);
        }
      },
      child: Image.asset('images/shhh.png'),
    );
  }
}