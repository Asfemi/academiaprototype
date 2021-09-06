import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class HomeFavoritiesBox extends StatelessWidget {
  const HomeFavoritiesBox({
    @required this.onPressed,
    this.image,
    this.color,
    this.text,
    this.text2,
    this.text3,
    this.icon,
    this.icon2,
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
  final bool light;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      //color: Colors.pinkAccent,
      padding: EdgeInsets.only(right: kMinMediumPadding),
      // margin: EdgeInsets.only(right: 5),
      width: size.width * 0.3,
      //margin: EdgeInsets.all(kDefaultPadding),
      child: Stack(
        children: [
          Container(
            // margin: EdgeInsets.only(right: 5),
            width: size.width * 0.3,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
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
          Positioned(
            left: size.width * 0.05,
            top: size.height * 0.09,
            child: Text(
              text,
              style: TextStyle(
                  color: light ? Colors.white : Colors.black,
                  fontSize: 15,
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
            left: 0,
            top: size.height * 0.12,
            child: Container(
              //padding: const EdgeInsets.all(4.0),
              margin: const EdgeInsets.all(4.0),
              child: Text(
                text2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: light ? Colors.white70 : Colors.black,
                  fontSize: 09,
                ),
                //.toLowerCase(),
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
