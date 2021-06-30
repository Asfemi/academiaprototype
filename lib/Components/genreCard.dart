import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  GenreCard({this.colour, this.text});

  final Color colour;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        height: 115,
        width: 155,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Stack(
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(colour, BlendMode.modulate),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("images/bg1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  text,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
