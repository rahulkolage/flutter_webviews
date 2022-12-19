import 'package:flutter/material.dart';
import './screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Views',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Arial",
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontSize: 18.0),
              // title: TextStyle(color: Colors.red))),

              // 'title is the term used in the 2014 version of material design. 
              //The modern term is headline6. ' 'This feature was deprecated after v1.13.8.'
              headline6: TextStyle(color: Colors.red))),
      home: Home(),
    );
  }
}