import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key key,
    @required this.size,
    this.color,
    this.image,
    this.about,
    this.title,
    this.author,
    this.by,
    this.heading,
  }) : super(key: key);

  final Size size;
  final Color color;
  final String image;
  final String heading;
  final String about;
  final String title;
  final String author;
  final String by;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: TextStyle(
                      color: kPrimaryTextColor,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    by,
                    style: TextStyle(
                      color: kPrimaryTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.notifications_outlined,
                color: kPrimaryTextColor,
              ),
            ],
          ),
        ),
        Container(
          height: size.shortestSide * 0.66,
          width: size.shortestSide,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
          child: Center(
            child: Container(
              //height: size.shortestSide * 0.38,
              // width: size.shortestSide * 0.32,
              constraints: BoxConstraints(
                maxHeight: size.shortestSide * 0.40,
                maxWidth: size.shortestSide * 0.32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      //color: Colors.white,
                      // height: size.shortestSide * 0.38,
                      width: size.shortestSide * 0.32,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                          // Radius.circular(4.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          title,
                          style: kHeadingText3.copyWith(
                            color: Colors.black,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: size.shortestSide * 0.38,
                      width: size.shortestSide * 0.32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
//            borderRadius: BorderRadius.all(
//              Radius.circular(5.0),
//            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: kPrimaryTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    author,
                    style: TextStyle(
                      color: kPrimaryTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.share_outlined,
                color: kPrimaryTextColor,
              ),
            ],
          ),
        ),
        Text(
          about,
          style: TextStyle(
            color: kPrimaryTextColor,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
