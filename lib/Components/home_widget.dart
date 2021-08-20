import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types

// Home_Widget
//   Home_Widget({
//     this.color,
//     this.image,
//     this.about,
//     this.heading,
//     this.onPressed,
//     //this.height,
//     this.exit,
//   });
//
//   final Color color;
//   final String heading;
//   final String about;
//   final String image;
//   final Function onPressed;
//   // final double height;
//   final bool exit;

// ignore: camel_case_types
class Home_Widget extends StatelessWidget {
  Home_Widget({
    this.color,
    this.image,
    this.about,
    this.heading,
    this.onPressed,
    //this.height,
    this.exit,
  });

  final Color color;
  final String heading;
  final String about;
  final String image;
  final Function onPressed;
  // final double height;
  final bool exit;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool deactivate = false;
    return Material(
      child: Stack(
        children: [
          Container(
            height: deactivate ? 0.0 : size.shortestSide,
            width: size.shortestSide,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: Container(
                height: size.shortestSide * 0.67,
                width: size.shortestSide * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
//            borderRadius: BorderRadius.all(
//              Radius.circular(5.0),
//            ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.star, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: onPressed,
            ),
          ),
          Positioned(
            left: 10,
            top: size.shortestSide * 0.50,
            // bottom: size.shortestSide * 0.25,
            child: Container(
              constraints: BoxConstraints.tightFor(
                width: size.shortestSide * 0.7,
                height: size.shortestSide * 0.3,
              ),
              child: Text(
                heading,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
            ),
          ),
          Positioned(
            top: size.shortestSide * 0.828,
            left: 10,
            child: Container(
              constraints: BoxConstraints.tightFor(
                width: size.shortestSide * 0.6,
                height: size.shortestSide * 0.3,
              ),
              child: Text(
                about,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Positioned(
            top: size.shortestSide * 0.854,
            right: 5,
            child: FlatButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.0, vertical: 5),
                    child: Text(
                      'Get',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
