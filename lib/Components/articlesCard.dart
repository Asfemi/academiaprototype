import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard(
      {this.text1,
      this.text2,
      this.text3,
      this.text4,
      this.textL1,
      this.textL2,
      this.image});

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String textL1;
  final String textL2;
  final String image;

  // the TextL2 ought to be gotten from the total amount of words in the article.
  //there should be a method to find this

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 220,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(
            color: Colors.white54,
            style: BorderStyle.solid,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 5),
              blurRadius: 1,
              color: Colors.teal.withOpacity(0.23),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 5.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(text1.toUpperCase(),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black.withOpacity(0.5))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        text2,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, left: 5.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(text4,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.8))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 5.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(text3,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, left: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Opacity(
                            opacity: 0.9, child: Text(textL1 + '.' + textL2))),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 8.0, top: 25),
                  child: Image.asset(
                    image,
                    height: 100,
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
