import 'package:academiaprototype/Components/ComingSoon.dart';
import 'package:flutter/material.dart';

//TODO: rename this into services if finallised
class Security extends StatelessWidget {
  static String id = 'Security_Screen';

  @override
  Widget build(BuildContext context) {
    return Material(child: ComingSoon(no: 1, theme: true));
  }
}
