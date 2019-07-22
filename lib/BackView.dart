import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class BackView extends StatelessWidget{

  BackView({@required this.onPressed});

  final GestureTapCallback onPressed;
  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();
  int index = 0;
  List<Color> _colors = [ //Get list of colors
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.teal,
    Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.blue),
      child: new Center(
        child: new Text("Hello, World!"),

      ),
    );
  }
}