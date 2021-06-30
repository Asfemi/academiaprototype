


import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class SportsScreen extends StatefulWidget {
  static String id = 'sports_Screen';

  @override
  _SportsScreenState createState() => _SportsScreenState();
}

String selectedSport = '.';

List<String> sportTypes = [
  'BasketBall',
  'Football',
  'Tennis',
  'Table Tennis',
];

List<DropdownMenuItem> getDropdownItem() {
  List<DropdownMenuItem<String>> dropdownItems = [];

  for (String sports in sportTypes) {
    var newItem = DropdownMenuItem(
      child: Text(sports),
      value: sports,
    );

    dropdownItems.add(newItem);
  }

  return dropdownItems;
}

class _SportsScreenState extends State<SportsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Sports'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: '6',
//                  child: ImageSlider(
//                    heightt: 0.5,
//                    imagePath: 'SportsScreen',
//                    imageList: [
//                      '1.jpg',
//                      '2.jpg',
//                      '3.jpg',
//                      '4.jpg',
//                      '5.jpg',
//                      '6.jpg',
//                      'IMG-20201204-WA0009.jpg',
//                      '27.jpg',
//                      '28.jpg',
//                      '29.jpg',
//                      '1.jpg',
//                    ],
//                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    height: 104,
                    width: 104,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        color: kPrimaryColor,
                        style: BorderStyle.solid,
                      ),
                      image: DecorationImage(
                        image: AssetImage("images/200h.gif"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: DropdownButton<String>(
                      value: selectedSport,
                      onChanged: (value) {},
                      items: getDropdownItem(),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 8.0),
              child: Container(
//         TODO: regularize this news widget in the ausa, sports, clubs screens
                height: 230,
                width: size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor,
                      offset: Offset.fromDirection(0, 2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.white,
                        width: size.width - 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sponsors for active sports men',
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'the university chairman...',
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        width: size.width - 10,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/101.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        width: size.width - 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
//            CustomScreenTile(
////              text: 'UpComing Matches',
////              icon: Icons.people,
////            ),
////            CustomScreenTile(
////              text: 'School Teams',
////              icon: Icons.people,
////            ),
////            CustomScreenTile(
////              text: 'OnGoing Matches',
////              icon: Icons.people,
////            ),
            //check out eben sports app for ideas
          ],
        ),
      ),
    );
  }
}

//training time,
// sports news
