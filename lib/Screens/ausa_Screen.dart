import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class AusaScreen extends StatefulWidget {
  static String id = 'ausa_Screen';

  @override
  _AusaScreenState createState() => _AusaScreenState();
}

class _AusaScreenState extends State<AusaScreen> {
  //TODO: add online election part
//  TODO: add current and past excecutives page
//  TODO: add messages to screen
//  TODO: add hand book
//  TODO: add works of different administration // we can merge the works and images of the administration together
//  TODO: add the 'brought to you by ausa' post atop of the page just below the image
//  i should probably make the image here a sliver i guess
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('A.U.S.A'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            ImageSlider(
//              heightt: 0.5,
//              imagePath: 'Mix',
//              imageList: [
//                '1.PNG',
//                '2.PNG',
//                '3.PNG',
//                '4.PNG',
//                '5.PNG',
//                '6.PNG',
//                '7.PNG',
//                '8.PNG',
//                '9.PNG',
//                '10.PNG',
//                '11.PNG',
//                '12.PNG',
//                '13.PNG',
//                '14.PNG',
//                '15.PNG',
//                '16.PNG',
//                '17.PNG',
//                '18.PNG',
//                '19.PNG',
//                '20.PNG',
//                '21.PNG',
//                '22.PNG',
//                '23.PNG',
//                '24.PNG',
//                '25.PNG',
//              ],
//            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(26),
                  ),
                  border: Border.all(
                    color: kPrimaryColor,
                    style: BorderStyle.solid,
                  ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'messages',
                            style: TextStyle(
                              fontSize: 20,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Message from the Student Senate',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.notification_important,
                        color: kPrimaryColor,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(26),
                  ),
                  border: Border.all(
                    color: kPrimaryColor,
                    style: BorderStyle.solid,
                  ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Adeleke University Hand Book',
                            style: TextStyle(
                              fontSize: 20,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'The rules and regulations, our dos and donts',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.book,
                        color: kPrimaryColor,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(26),
                  ),
                  border: Border.all(
                    color: kPrimaryColor,
                    style: BorderStyle.solid,
                  ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Administrations',
                            style: TextStyle(
                              fontSize: 20,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Meet this years Excecutives',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.image,
                        color: kPrimaryColor,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(26),
                  ),
                  border: Border.all(
                    color: kPrimaryColor,
                    style: BorderStyle.solid,
                  ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elections!!!',
                            style: TextStyle(
                              fontSize: 20,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Be purposeful, be political active',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.people,
                        color: kPrimaryColor,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
