import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class GistBox extends StatelessWidget {
  GistBox({
    @required this.size,
    @required this.topic,
    @required this.authur,
    @required this.award1,
    @required this.award2,
    @required this.award3,
    @required this.subject,
    @required this.image,
    @required this.ontap1,
    @required this.ontap2,
    @required this.likes,
    //@required this.likesCount,
  });

  final Size size;
  final String topic;
  final String authur;
  final IconData award1;
  final IconData award2;
  final IconData award3;
  final String subject;
  final String image;
  final Function ontap1;
  final Function ontap2;
  final String likes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: kPrimaryColor,
            style: BorderStyle.solid,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'images/11.jpg',
                      fit: BoxFit.fill,
                      height: size.height * 0.04,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        topic,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        authur,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Spacer(),
                  Flexible(
                    child: TextButton(
                        onPressed: () {},
                        child: ClipOval(
                            child: Container(
                                color: Colors.teal,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )))),
                  ),
//                  TODO: add the add functionality
                  Flexible(
                    child: GestureDetector(
                        onTap: () {
//                    TODO: setup an alert dialog here to display a more options and settings
                        },
                        child: Icon(Icons.more_vert)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    award1,
                    color: Colors.red,
                  ),
                  Icon(
                    award2,
                    color: kPrimaryColor,
                  ),
                  Icon(
                    award3,
                    color: Colors.orange,
                  ),
                  Text(
                    '85 Awards',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Text(
                subject,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Image.asset(image),
              Row(
                children: <Widget>[
                  GestureDetector(
                      onTap: ontap1, child: Icon(Icons.arrow_upward, size: 30)),
                  Text(
                    likes,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  InkWell(
                      onTap: ontap2,
                      child: Icon(Icons.arrow_downward, size: 30)),
                  Spacer(),
                  Icon(Icons.message, size: 30),
                  Text(
                    '20.6k',
//                    TODO: add more message amount once more users add messages
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Icon(Icons.share, size: 30),
                  Text(
                    'Share',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Icon(Icons.card_giftcard, size: 30),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
