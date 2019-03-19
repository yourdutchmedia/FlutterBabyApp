import 'package:flutter/material.dart';


class Drawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DrawerState();
  }
}

class _DrawerState extends State<Drawer> {
  

  bool darkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
            title: Text("Menu"),
            trailing: Switch(value: darkTheme, onChanged: (changed) {
             setState(()
             {darkTheme = changed;
                 },);},),),],)
    ),);
       
  }
}


//drawer: Drawer(
 //        child: ListView(
   //         children: <Widget>[
     //        ListTile(
       //       title: Text("Menu"),
         //   trailing: Switch(value: darkTheme, onChanged: (changed) {
           //     setState(()
             //   {darkTheme = changed;
               //   });},),),