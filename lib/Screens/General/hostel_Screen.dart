import 'package:academiaprototype/Components/ComingSoon.dart';
import 'package:flutter/material.dart';

class HostelScreen extends StatefulWidget {
  static String id = 'hostel_Screen';

  @override
  _HostelScreenState createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(child: ComingSoon(no: 2, theme: false));
  }
}
