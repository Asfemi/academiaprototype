import 'package:flutter/material.dart';

class TimeTableTile extends StatelessWidget {
  TimeTableTile(
      {this.heading,
      this.subHeading,
      this.color,
      this.fontSize,
      this.textColor1,
      this.textColor2});

  final String heading;
  final String subHeading;
  final double fontSize;
  final Color color;
  final Color textColor1;
  final Color textColor2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          //border: Border()
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //heading
              Text(
                heading,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize ?? 21.0,
                    color: textColor1 ?? Colors.white),
              ),
              //subHeading
              Text(
                subHeading ?? '',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: textColor2 ?? Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
