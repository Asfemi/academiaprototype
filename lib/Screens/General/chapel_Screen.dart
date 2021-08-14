import 'package:academiaprototype/Components/ComingSoon.dart';
import 'package:flutter/material.dart';

//TODO: make this in a later version a statefull widget

class ChapelScreen extends StatelessWidget {
  static String id = 'Chapel_Screen';

  @override
  Widget build(BuildContext context) {
    return Material(child: ComingSoon(no: 2, theme: false));
  }
}
