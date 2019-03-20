import 'package:flutter/material.dart';

import './bodycontent.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  bool darkTheme = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: new AppBar(
            title: new Text("Baby App"),
          ),
          body: BodyContent(), //From bodycontent.dart
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Dark Theme"),
                  trailing: Switch(
                    value: darkTheme,
                    onChanged: (changed) {
                      setState(
                        () {
                          darkTheme = changed;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ), 
        ),
        theme: darkTheme ? ThemeData.dark() : ThemeData.light());
  }
}
