import 'package:flutter/material.dart';

import './bodycontent.dart';

import './drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.grey,
          accentColor: Colors.amber[900]),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Baby App"),
        ),
        body: BodyContent(), //From bodycontent.dart
         drawer: Drawer(),

        )
    );  
  }
}
