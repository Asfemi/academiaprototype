import 'package:academiaprototype/Screens/Sports/spoartsNews.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class SportsScreen extends StatefulWidget {
  static String id = 'sports_Screen';

  @override
  _SportsScreenState createState() => _SportsScreenState();
}

String selectedSport = 'Football';

List<String> sportTypes = [
  'BasketBall',
  'Football',
  'Tennis',
  'Table Tennis',
];

List<String> sendersList = [
  'Fbms vows to defeat law tomorrow',
  'Sponsorship for active sportsmen',
  'FOE Winners of the inter Faculty sports',
  'Each faculty to assemble a sports team',
  'Ecouragement for female atlethes',
  'Adeleke beats babcock 6-1',
  'Proper Sports ethics',
  'First aid kits provided for during sports',
  'boots to be provided for best goal scorers',
  'michael sanni best keeper of the month',
];
List<String> subjectList = [
  'in a meeting with the sports director yesterday...'
      'message from the chairman',
  'message from the Sports director',
  'an 11 man team is to be assembled by each faculty by...',
  'Dr anu in meeting yesterday has called to attention...',
  'Ooh what a match it was and the ecitement in the air as...',
  'The sports committe set up by the university...',
  'The medical team has called to notice the dangers in...',
  'Dr dupe has given provision for the best sportsmen...',
  'For the fourth time in a row he has done it again...',
];

List<String> introList = [
  'Today at the students life seminar the...',
  'it was a magnificent sight to behold as...',
];

List<DropdownMenuItem> getDropdownItem() {
  List<DropdownMenuItem<String>> dropdownItems = [];

  for (String sports in sportTypes) {
    var newItem = DropdownMenuItem(
      child: Text(
        sports,
        // style: TextStyle(
        //   color: Colors.white,
        // ),
      ),
      value: sports,

      //onTap: (value) => ;
    );

    dropdownItems.add(newItem);
  }

  return dropdownItems;
}

class _SportsScreenState extends State<SportsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final title = 'Sports';

    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              pinned: true,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("$title",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset(
                    "assets/eee.jpg",
                    fit: BoxFit.cover,
                  )),
              expandedHeight: size.height / 2.5,
              backgroundColor: kPrimaryColor,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kPrimaryColor,
                ),
                tooltip: 'back',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                    icon: ClipOval(
                      child: Image.asset(
                        'assets/200h.gif',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    iconDisabledColor: kPrimaryColor,
                    iconEnabledColor: Colors.white,
                    value: selectedSport,
                    onChanged: (value) {
                      setState(() {
                        value = selectedSport;
                      });
                    },
                    items: getDropdownItem(),
                  ),
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, position) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Sportsnews.id);
                  },
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      12.0, 12.0, 12.0, 6.0),
                                  child: Text(
                                    sendersList[position],
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      12.0, 6.0, 12.0, 12.0),
                                  child: Text(
                                    subjectList[position],
                                    style: TextStyle(fontSize: 11.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "5m",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.star_border,
                                      size: 20.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2.0,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                childCount: sendersList.length,
              ), //SliverChildBuildDelegate
            )
          ],
        ));
  }
}

//training time,
// sports news
