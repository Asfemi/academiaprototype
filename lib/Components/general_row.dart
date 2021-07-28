import 'package:flutter/material.dart';

class GeneralRow extends StatelessWidget {
  const GeneralRow(
      {this.icon1,
      this.text1,
      this.icon2,
      this.text2,
      this.icon3,
      this.text3,
      this.ontap1,
      this.ontap2,
      this.ontap3});

  final IconData icon1;
  final String text1;
  final IconData icon2;
  final String text2;
  final IconData icon3;
  final String text3;
  final Function ontap1;
  final Function ontap2;
  final Function ontap3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
//                  Todo: most probably use image icon.
          GestureDetector(
            onTap: ontap1,
            child: Column(
              children: <Widget>[
                Icon(
                  icon1,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  text1,
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: ontap2,
            child: Column(
              children: <Widget>[
                Icon(
                  icon2,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  text2,
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: ontap3,
            child: Column(
              children: <Widget>[
                Icon(
                  icon3,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  text3,
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
