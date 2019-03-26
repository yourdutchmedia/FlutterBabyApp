import 'package:flutter/material.dart';
import 'dart:async';

import './gesturedetector.dart';

class BodyContent extends StatefulWidget {
  int getal = 3;
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
  int _start3 = 15;

  bool isTimer = false;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
            () {
              if (_start < 1) {
                timer.cancel();
                _start = 5;
                isTimer = false;
              } else {
                _start = _start - 1;
                isTimer = true;
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
                isTimer = false;
              } else {
                _start2 = _start2 - 1;
                isTimer = true;
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
                _start3 = 15;
                isTimer = false;
              } else {
                _start3 = _start3 - 1;
                isTimer = true;
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
          GesDetector(), //From gesturedetector.dart
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
