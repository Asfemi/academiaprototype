import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class ClassWigdet extends StatelessWidget {
  const ClassWigdet({
    Key key,
    @required this.size,
    this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 4.0),
      child: Container(
        height: size.shortestSide / 3,
        width: size.shortestSide / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
//                            border: Border.all(
//                              color: kPrimaryColor,
//                              style: BorderStyle.solid,
//                            ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 2,
              color: kPrimaryColor.withOpacity(0.23),
            ),
          ],
        ),
        child: ListTile(
          title: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
