import 'package:academiaprototype/Components/ComingSoon.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  static String id = 'ReviewPage_Screen';

  @override
  Widget build(BuildContext context) {
    return Material(child: ComingSoon(no: 3, theme: true));
  }
}
