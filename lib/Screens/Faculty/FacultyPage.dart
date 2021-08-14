import 'package:academiaprototype/Components/MyScrollView.dart';
import 'package:academiaprototype/Screens/Faculty/Department/department_Screen.dart';
import 'package:academiaprototype/Screens/Faculty/aluminni.dart';
import 'package:academiaprototype/Screens/Faculty/facultyGallery.dart';
import 'package:academiaprototype/Screens/Faculty/generalInfo.dart';
import 'package:academiaprototype/Screens/Faculty/notableWorks.dart';
import 'package:academiaprototype/constants.dart';
//import 'package:academiaprototype/Screens/Faculty/department_Screen.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FacultyPage extends StatefulWidget {
  static String id = 'facultypage';

  @override
  _FacultyPageState createState() => _FacultyPageState();
}

bool fabActive = false;

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

String selectedDept = 'Mech';

List<String> department = [
  'Mech',
  'Elect',
  'Civil',
  'Agric',
];

List<DropdownMenuItem> getDropdownItem() {
  List<DropdownMenuItem<String>> dropdownItems = [];

  for (String dept in department) {
    var newItem = DropdownMenuItem(
      child: Text(dept),
      value: dept,
    );

    dropdownItems.add(newItem);
  }

  return dropdownItems;
}

class _FacultyPageState extends State<FacultyPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final title = 'Faculty';

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            fabActive = !fabActive;
          });
        },
        child:
            fabActive ? Icon(Icons.arrow_back) : Icon(LineIcons.stepBackward),
        backgroundColor: kPrimaryColor,
      ),
      //TODO: set security rules and allow only users with selected faculties to see their faculty page
      body: Stack(
        children: [
          MyScrollView(
            title: title,
            backgroundWidget: Image.asset(
              "assets/foe.jpg",
              fit: BoxFit.cover,
            ),
            height: size.height / 2.5,
            leadingWidget: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: kPrimaryColor,
              ),
              tooltip: 'back',
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  fabActive = false;
                });
              },
            ),
            actionsList: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                  iconDisabledColor: Colors.black,
                  iconEnabledColor: kPrimaryColor,
                  value: selectedDept,
                  onChanged: (value) {},
                  items: getDropdownItem(),
                ),
              ),
            ],
            bottom: null,
            child: SliverChildBuilderDelegate(
              (context, position) => Column(
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              childCount: subjectList.length,
            ),
          ),
          BuildPositioned(
            icon: Icons.question_answer,
            route: () {
              Navigator.pushNamed(context, FacultyAluminni.id);
            },
            bottom: size.shortestSide * 0.34,
            right: size.shortestSide * 0.01,
          ),
          BuildPositioned(
            icon: Icons.image,
            route: () {
              Navigator.pushNamed(context, NotableWorks.id);
            },
            bottom: size.shortestSide * 0.31,
            right: size.shortestSide * 0.15,
          ),
          BuildPositioned(
            icon: Icons.support_agent,
            route: () {
              Navigator.pushNamed(context, DepartmentScreen.id);
            },
            bottom: size.shortestSide * 0.25,
            right: size.shortestSide * 0.25,
          ),
          BuildPositioned(
            icon: Icons.people_rounded,
            route: () {
              Navigator.pushNamed(context, FacultyGallery.id);
            },
            bottom: size.shortestSide * 0.15,
            right: size.shortestSide * 0.31,
          ),
          BuildPositioned(
            icon: Icons.lightbulb,
            route: () {
              Navigator.pushNamed(context, FacultyGenInfo.id);
            },
            bottom: size.shortestSide * 0.01,
            right: size.shortestSide * 0.34,
          ),
          //todo: use animatedPosition to animate these widgets display
          //todo: add functionality to tap outside the popButtons to close them
        ],
      ),
      //Todo: Setup faculty drawer
      drawer: Drawer(
        child: Container(
          color: Colors.white30,
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: kPrimaryColor),
                  child: Center(
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/1.jpg',
                            fit: BoxFit.fill,
                            height: size.height * 0.10,
                            width: size.width * 0.20,
                          ),
                        ),
                        Text(
                          'Poppy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'billabong',
                          ),
                        ),
                      ],
                    ),
                  )),
              ListTile(
                title: Text('faculty:'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildPositioned extends StatelessWidget {
  const BuildPositioned(
      {this.width,
      this.height,
      this.bottom,
      this.left,
      this.right,
      this.top,
      this.icon,
      this.route});

  final double right;
  final double left;
  final double top;
  final double bottom;
  final double width;
  final double height;
  final IconData icon;
  final Function route;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      bottom: bottom,
      child: ClipOval(
        child: Container(
          height: fabActive ? 30 : 0,
          width: 30,
          color: kPrimaryColor,
          child: Center(
            child: IconButton(
              icon: Icon(
                icon,
                size: 15,
                color: Colors.white,
              ),
              onPressed: route,
            ),
          ),
        ),
      ),
    );
  }
}
