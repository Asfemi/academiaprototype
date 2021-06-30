import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_Widget extends StatefulWidget {
  @override
  _Home_WidgetState createState() => _Home_WidgetState();
}

// ignore: camel_case_types
class _Home_WidgetState extends State<Home_Widget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.shortestSide,
      width: size.shortestSide,
      child: Stack(
        children: [
          Container(
            height: size.shortestSide,
            width: size.shortestSide,
            decoration: BoxDecoration(
              color: Colors.black,
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
                    image: AssetImage(
                        'assets/dom-aguiar-x6S3Z0vZxj4-unsplash.jpg'),
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
              onPressed: () {},
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
                'Get more from your money',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
            ),
          ),
          Positioned(
            top: size.shortestSide * 0.820,
            left: 10,
            child: Container(
              constraints: BoxConstraints.tightFor(
                width: size.shortestSide * 0.6,
                height: size.shortestSide * 0.3,
              ),
              child: Text(
                'Get a premium or metal account to enjoy higher limits and distinctive cards',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Positioned(
            top: size.shortestSide * 0.85,
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
