import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab(
      {Key key,
      @required this.size,
      @required this.color,
      @required this.writeUp})
      : super(key: key);

  final Size size;
  final Color color;
  final String writeUp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 2.0,
      ),
      child: Container(
        height: size.height * 0.18,
        width: size.width * 0.4,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(writeUp, style: kHeadingText2,),
              Container(
                height: size.height * 0.075,
                width: size.width * 0.08,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
