import 'package:flutter/material.dart';
import 'dart:math';





class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => new _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  Color cellColor = Colors.white;

  Text _getText(index) {
    Text text;
    switch (index) {
      case 0:
        text = new Text('Hey there', textAlign: TextAlign.center);
        break;

    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo App"),
      ),
      body:  new MyWidget(
        index: 0,
        color: cellColor,
        text: _getText(0),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  final Color color;
  final Text text;
  final int index;

  MyWidget({this.color, this.text, this.index});

  @override
  _MyWidgetState createState() => new _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Color cellColor = Colors.white;
  Text cellText = new Text('white');
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);
  @override
  void initState() {
    super.initState();
    cellColor = widget.color;
    cellText = widget.text;
  }

  _changeCell(index) {
    setState(() {
      switch (index) {
        case 0:
          cellColor = Color.fromARGB(
            //or with fromRGBO with fourth arg as _random.nextDouble(),
            _random.nextInt(256),
            _random.nextInt(256),
            _random.nextInt(256),
            _random.nextInt(256),
          );
          cellText = new Text('Hey there');
          break;

      }
    });
    print("Container clicked " + index.toString());
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () => _changeCell(widget.index),

      child: new Container(

        width: double.infinity,
        height: double.infinity,
        decoration: new BoxDecoration(
          color: cellColor,
        ),
        child: new Center(
          child: cellText,
        ),
      ),
    );
  }
}