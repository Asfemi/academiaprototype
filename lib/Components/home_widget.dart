import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_Widget extends StatefulWidget {
  Home_Widget({
    this.color,
    this.image,
    this.about,
    this.heading,
    this.onPressed,
    this.height,
  });

  final Color color;
  final String heading;
  final String about;
  final String image;
  final Function onPressed;
  final double height;

  @override
  _Home_WidgetState createState() => _Home_WidgetState();
}

// ignore: camel_case_types
class _Home_WidgetState extends State<Home_Widget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool deactivate = false;

    return Container(
      height: widget.height,
      width: size.shortestSide,
      child: Stack(
        children: [
          Container(
            height: size.shortestSide,
            width: size.shortestSide,
            decoration: BoxDecoration(
              color: widget.color,
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
                    image: AssetImage(widget.image),
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
            right: 10,
            top: 10,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: widget.onPressed,
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
                widget.heading,
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
                widget.about,
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
