import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class StudentsLifeCard extends StatelessWidget {
  const StudentsLifeCard({
    Key key,
    @required this.size,
    @required this.day,
    @required this.dayText,
    @required this.image,
    @required this.month,
    @required this.text,
    @required this.year,
  }) : super(key: key);

  final Size size;
  final String day;
  final String month;
  final String year;
  final String text;
  final String dayText;
  final String image;
  // final Size size;
  // final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 25),
      height: size.height * 0.55,
      width: size.width * 0.7,
      decoration: BoxDecoration(
        // color: Colors.pink,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 20,
              top: 10,
              child: Column(
                children: [
                  Text(
                    day,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    month,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white54,
                    ),
                  ),
                  Text(
                    year,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade100,
                    ),
                  ),
                ],
              )),
          Positioned(
              top: 10,
              right: 10,
              child: Icon(
                LineIcons.heart,
                color: Colors.white,
                size: 25,
              )),
          Positioned(
              bottom: 65,
              left: 20,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )),
          Positioned(
              bottom: 40,
              left: 20,
              child: Text(
                dayText,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )),
        ],
      ),
    );
  }
}
