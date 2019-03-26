import 'package:flutter/material.dart';
import 'package:audioplayer2/audioplayer2.dart';

AudioPlayer audioPlugin = new AudioPlayer();

class GesDetector extends StatelessWidget {
  GesDetector();
  bool pressed = true;

  


  @override
  Widget build(BuildContext context) {
    return (Container());
  }
}

// if (pressed) {
//           player.play('ShhhSoundeffect.mp3');
//           pressed = false;
//         } else if (!pressed) {
//           player.clear('ShhhSoundeffect.mp3');
//           pressed = true;
//         }
