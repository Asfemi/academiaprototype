import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class CustomScreenTile extends StatelessWidget {
  CustomScreenTile({this.text, this.icon, this.ontap});

  final String text;
  final IconData icon;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 70,
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
                  size: 30,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
