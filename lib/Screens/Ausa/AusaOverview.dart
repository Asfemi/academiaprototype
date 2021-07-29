import 'package:flutter/material.dart';

class AusaOverview extends StatefulWidget {
  //const AusaOverview({Key? key}) : super(key: key);

  @override
  _AusaOverviewState createState() => _AusaOverviewState();
}

class _AusaOverviewState extends State<AusaOverview> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      color: Colors.grey.shade200,
      child: Column(
        children: [],
      ),
    );
  }
}
