import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String _debugString = 'Origenele tekst';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        accentColor: Colors.amber[900]
      ),
      home: Scaffold(
        appBar: new AppBar(
          // Title
          title: new Text("Baby App"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Button'),
                    onPressed: () => {
                          _debugString = 'Knop 1 Werkt',
                          debugPrint(_debugString),
                        },
                  ),
                  RaisedButton(
                    child: Text('Button'),
                    onPressed: () => {
                          _debugString = 'Knop 2 Werkt',
                          debugPrint(_debugString),
                        },
                  ),
                  RaisedButton(
                    child: Text('Button'),
                    onPressed: () => {
                          _debugString = 'Knop 3 Werkt',
                          debugPrint(_debugString),
                        },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
