import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String _debugString = 'Origenele tekst';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          // Title
          title: new Text("Baby App"),
        ),
        body: Center(
          child: Column(children: <Widget>[
            RaisedButton(
              child: Text('Button'),
              onPressed: () => {
                _debugString = 'Knop Werkt',
                debugPrint (_debugString)
              },
            )
          ]),
        ),
      ),
    );
  }
}
