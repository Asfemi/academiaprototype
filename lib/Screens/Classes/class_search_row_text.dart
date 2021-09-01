import 'package:flutter/material.dart';

class ClassSearchRowText extends StatelessWidget {
  const ClassSearchRowText({
    Key key,
    @required this.size,
    @required this.searchResultText,
    @required this.no,
  }) : super(key: key);

  final Size size;
  final String searchResultText;
  final no;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          no,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(width: 10),
        Container(
          constraints: BoxConstraints(
            maxHeight: size.shortestSide * 0.3,
            maxWidth: size.width - 90,
            minHeight: size.shortestSide * 0.05,
            minWidth: size.width - 90,
          ),
          child: Text(
            '$searchResultText',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
