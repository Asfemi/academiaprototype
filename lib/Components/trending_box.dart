import 'package:flutter/material.dart';

class TrendingBox extends StatelessWidget {
  TrendingBox({this.image, this.topic, this.info});

  final String image;
  final String topic;
  final String info;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 180,
      width: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
        Radius.circular(10),
      )),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      topic,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    info,
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: <Widget>[
                      ClipOval(
                        child: Image.asset(
                          'images/11.jpg',
                          fit: BoxFit.fill,
                          height: size.height * 0.025,
                        ),
                      ),
                      SizedBox(height: 10, width: 10),
                      Text(
                        'a/TheRightCantMeme',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
