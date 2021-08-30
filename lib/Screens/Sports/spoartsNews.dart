import 'package:academiaprototype/Components/ComingSoon.dart';
import 'package:flutter/material.dart';

class Sportsnews extends StatelessWidget {
  //const Sportsnews({Key? key}) : super(key: key);

  static String id = 'sportsnews';

  @override
  Widget build(BuildContext context) {
    return Material(child: ComingSoon(no: 3, theme: true));
  }
}
