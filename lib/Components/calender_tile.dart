import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class CalenderTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: size.width - 20,
        height: size.height * 0.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 10,
              color: kPrimaryColor.withOpacity(0.23),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text('Date:'),
                Text(''),
              ],
            ),
            Row(
              children: [
                Text('Events:'),
                Text(''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
