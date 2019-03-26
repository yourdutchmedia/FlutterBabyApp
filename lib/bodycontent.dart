import 'package:flutter/material.dart';
import 'dart:async';
import 'package:audioplayer2/audioplayer2.dart';

import './gesturedetector.dart';

AudioPlayer audioPlayer = new AudioPlayer();

class BodyContent extends StatefulWidget {
  BodyContent();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _bodyState();
  }
}

class _bodyState extends State<BodyContent> {
  Timer _timer;
  int _start = 5;
  int _start2 = 10;
  int _start3 = 12;

// 3 TIMER FUNCTIONS ONE FOR EACH BUTTON

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
            () {
              if (_start < 1) {
                timer.cancel();
                _start = 5;
              } else if (_start <= 5) {
                _start = _start - 1;
              }
            },
          ),
    );
  }

  void startTimer2() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
            () {
              if (_start2 < 1) {
                timer.cancel();
                _start2 = 10;
              } else if (_start2 <= 10) {
                _start2 = _start2 - 1;
              }
            },
          ),
    );
  }

  void startTimer3() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
            () {
              if (_start3 < 1) {
                timer.cancel();
                _start3 = 12;
              } else if (_start3 <= 12) {
                _start3 = _start3 - 1;
              }
            },
          ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Future<void> play() async {
                 await audioPlayer.play('../assets/ShhhSoundeffect.mp3');
                 setState(() => playerState = PlayerState.playing);
              }
            },
            child: Image.asset('images/shhh.png'),
          ), //From gesturedetector.dart
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('$_start' + ' SEC'),
                onPressed: () => {startTimer()},
              ),
              RaisedButton(
                child: Text('$_start2' + ' SEC'),
                onPressed: () => {startTimer2()},
              ),
              RaisedButton(
                child: Text('$_start3' + ' SEC'),
                onPressed: () => {startTimer3()},
              ),
            ],
          ),
        ],
      ),
    );
  }
}



