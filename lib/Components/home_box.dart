import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomeBox extends StatelessWidget {
  HomeBox({
    @required this.onPressed,
    this.image,
    this.color,
    this.text,
    this.text2,
    this.text3,
    this.icon,
    this.icon2,
    this.tag,
    @required this.light,
  });

  final Function onPressed;
  final String image;
  final IconData icon;
  final IconData icon2;
  final Color color;
  final String text;
  final String text2;
  final String text3;
  final String tag;
  final bool light;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      //color: Colors.pinkAccent,
      padding: EdgeInsets.only(right: kMinMediumPadding),
      // margin: EdgeInsets.only(right: 5),
      width: size.width * 0.465,
      //margin: EdgeInsets.all(kDefaultPadding),
      child: Stack(
        children: [
          Hero(
            tag: tag,
            child: Container(
              // margin: EdgeInsets.only(right: 5),
              width: size.width * 0.45,
              height: size.height * 0.23,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
//                border: Border.all(
//                  color: kPrimaryColor,
//                  style: BorderStyle.solid,
//                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: MaterialButton(
                onPressed: onPressed,
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: size.height * 0.0157,
            child: Container(
              width: 40,
              height: 40,
              //margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      icon2,
                      size: 15,
                      color: color,
                    ),
                    Text(
                      text3,
                      style: TextStyle(
                          color: color,
                          fontSize: 7,
                          fontWeight: FontWeight.bold),
                      //.toUpperCase
                      //todo: fkx thks
//                style: GoogleFonts.mcLaren(
//                  color: Colors.black.withOpacity(0.9),
//                  fontWeight: FontWeight.w500,
//                  fontSize: 12,
//                ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: size.height * 0.14,
            child: Text(
              text,
              style: TextStyle(
                  color: light ? Colors.white : Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
              //.toUpperCase
              //todo: fkx thks
//                style: GoogleFonts.mcLaren(
//                  color: Colors.black.withOpacity(0.9),
//                  fontWeight: FontWeight.w500,
//                  fontSize: 12,
//                ),
            ),
          ),
          Positioned(
            left: 10,
            top: size.height * 0.18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.lock,
                  size: 11,
                  color: light ? Colors.white70 : Colors.black,
                ),
                SizedBox(width: 5),
                Text(
                  text2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: light ? Colors.white70 : Colors.black,
                    fontSize: 12,
                  ),
                  //.toLowerCase(),
                  //todo:  fkx thks
//                style: GoogleFonts.mcLaren(
//                  color: Colors.black.withOpacity(0.5),
//                  fontWeight: FontWeight.w500,
//                  fontSize: 10,
//                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
