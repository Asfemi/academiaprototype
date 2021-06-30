import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomeBox extends StatelessWidget {
  HomeBox({
    @required this.onPressed,
    this.image,
    this.text,
    this.text2,
    this.icon,
    this.tag,
  });

  final Function onPressed;
  final String image;
  final IconData icon;
  final String text;
  final String text2;
  final String tag;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(kMinMediumPadding),
      width: size.width * 0.40,
      //margin: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: <Widget>[
          Hero(
            tag: tag,
            child: Container(
              width: size.width * 0.40,
              height: size.height * 0.18,
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
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: kMinPadding, left: kMinPadding),
              child: Text(
                text.toUpperCase(),
                //todo: fkx thks
//                style: GoogleFonts.mcLaren(
//                  color: Colors.black.withOpacity(0.9),
//                  fontWeight: FontWeight.w500,
//                  fontSize: 12,
//                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: kMinPadding, left: kMinPadding),
              child: Text(
                text2.toLowerCase(),
                //todo:  fkx thks
//                style: GoogleFonts.mcLaren(
//                  color: Colors.black.withOpacity(0.5),
//                  fontWeight: FontWeight.w500,
//                  fontSize: 10,
//                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
