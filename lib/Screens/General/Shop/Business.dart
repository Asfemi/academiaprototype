import 'package:academiaprototype/Components/ComingSoon.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatefulWidget {
  static String id = 'business';

  @override
  _BusinessScreenState createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(child: ComingSoon(no: 3, theme: true));
  }
}
