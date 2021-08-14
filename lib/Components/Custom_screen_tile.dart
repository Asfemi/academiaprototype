import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class CustomScreenTile extends StatelessWidget {
  CustomScreenTile({this.text, this.icon, this.ontap});

  final String text;
  final IconData icon;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 4.0, 2.0, 4.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: size.height * 0.05,
          width: size.shortestSide,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 10,
                color: kPrimaryColor.withOpacity(0.23),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(26)),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.black,
                  size: 14,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
