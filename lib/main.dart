import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:shush/countdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.dark,
        data: (brightness) => new ThemeData(
              fontFamily: 'Roboto',
              brightness: brightness,
              accentColor: Colors.blueAccent,
            ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Shush',
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: MyHomePage(title: 'Shush'),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CountdownTimer countdownTimer = CountdownTimer(
    timerDuration: 30,
  );

  void _changeTheme(bool) {
    setState(() {
     countdownTimer = CountdownTimer(timerDuration: 30,); 
    });
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Night mode',
                  style: Theme.of(context).textTheme.subhead,
                ),
                Switch(
                  value: Theme.of(context).brightness == Brightness.dark,
                  activeColor: Colors.lightBlue[50],
                  activeTrackColor: Theme.of(context).accentColor,
                  onChanged: _changeTheme,
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: countdownTimer,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text('5 minutes'),
                  onPressed: () {
                    setState(() {
                      countdownTimer = null;
                      countdownTimer = CountdownTimer(
                        timerDuration: 300,
                      );
                    });
                  },
                  color: Theme.of(context).accentColor,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                RaisedButton(
                  child: Text('10 minutes'),
                  onPressed: () {
                    setState(() {
                      countdownTimer = null;

                      countdownTimer = CountdownTimer(
                        timerDuration: 600,
                      );
                    });
                  },
                  color: Theme.of(context).accentColor,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                RaisedButton(
                  child: Text('15 minutes'),
                  onPressed: () {
                    setState(() {
                      countdownTimer = null;
                      countdownTimer = CountdownTimer(
                        timerDuration: 900,
                      );
                    });
                  },
                  color: Theme.of(context).accentColor,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
