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
          accentColor: Colors.amber[900]),
      home: Scaffold(
        appBar: new AppBar(
          // Title
          title: new Text("Baby App"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  // ******************** Hier word de code uitgevoerd zodra de foto word aangeraakt ********************
                  _debugString = 'onTap werkt!!!!!';
                  print(_debugString);
                },
                child: Image.asset('images/shhh.png'),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('5 MIN'),
                    onPressed: () => {
                          _debugString = 'Knop 1 Werkt',
                          debugPrint(_debugString),
                        },
                  ),
                  RaisedButton(
                    child: Text('10 MIN'),
                    onPressed: () => {
                          _debugString = 'Knop 2 Werkt',
                          debugPrint(_debugString),
                        },
                  ),
                  RaisedButton(
                    child: Text('15 MIN'),
                    onPressed: () => {
                          _debugString = 'Knop 3 Werkt',
                          debugPrint(_debugString),
                        },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
