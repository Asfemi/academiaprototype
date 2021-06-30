import 'package:flutter/material.dart';

class MapsScreen extends StatefulWidget {
  static String id = 'maps Screen';

  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps'),
      ),
      body: Column(),
    );
  }
}
