import 'package:flutter/material.dart';
import 'dart:async';

import './gesturedetector.dart';

class BodyContent extends StatefulWidget {
  int getal=3;
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

  bool isTimer = false;

  void startTimer() {
    const oneMin = const Duration(minutes: 1);
    _timer = new Timer.periodic(
        oneMin,
        (Timer timer) => setState(() {
              if (_start < 1) {
                timer.cancel();
                isTimer = false;
              } else {
                _start = _start - 1;
                isTimer = true;
              }
            }));
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
                child: Text('$_start' + ' MIN'),
                onPressed: () => {
                  startTimer()
                },
              ),
              RaisedButton(
                child: Text('10 MIN'),
                onPressed: () => {},
              ),
              RaisedButton(
                child: Text('15 MIN'),
                onPressed: () => {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
