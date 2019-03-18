import 'package:flutter/material.dart';

import './gesturedetector..dart';

class BodyContent extends StatelessWidget {
  BodyContent();

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
                child: Text('5 MIN'),
                onPressed: () => {},
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
