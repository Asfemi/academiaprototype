import 'package:flutter/material.dart';

class TableContainer extends StatelessWidget {
  const TableContainer({
    Key key,
    @required this.size,
    @required this.color,
    this.text,
  }) : super(key: key);

  final Size size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.05,
      width: size.width * 0.03,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
