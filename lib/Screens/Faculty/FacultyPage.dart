import 'package:academiaprototype/Components/Custom_screen_tile.dart';
import 'package:academiaprototype/Components/DependentDropDownList.dart';
import 'package:academiaprototype/constants.dart';
//import 'package:academiaprototype/Screens/Faculty/department_Screen.dart';
//import 'package:academia/Screens/Faculty/FOL/FOLGallery.dart';
import 'package:flutter/material.dart';

class FacultyPage extends StatefulWidget {
  static String id = 'facultypage';

  FacultyPage({this.faculty, this.imageList, this.imagePath});

  final String faculty;
  final List imageList;
  final String imagePath;

  @override
  _FacultyPageState createState() => _FacultyPageState(
      faculty: faculty, imageList: imageList, imagePath: imagePath);
}

class _FacultyPageState extends State<FacultyPage> {
  _FacultyPageState({this.faculty, this.imageList, this.imagePath});

  final String faculty;
  final List imageList;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty of $faculty'),
        centerTitle: true,
        actions: [],
      ),
      //TODO: set security rules and allow only users with selected faculties to see their faculty page
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: '1',
                  child: Container(
                    height: size.height * 0.6,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, DepartmentScreen.id);
                      },
                      child: Container(
                        height: size.height * 0.07,
                        width: size.width - 10,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Department',
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CustomScreenTile(
              icon: Icons.event_available,
              text: 'General info',
              ontap: () {
                //Navigator.pushNamed(context, FacultyGenInfo.id);
              },
            ),
            CustomScreenTile(
              icon: Icons.calendar_today,
              text: 'Calender/Events',
              ontap: () {
                //Navigator.pushNamed(context, FacultyCalender.id);
              },
            ),
            CustomScreenTile(
              icon: Icons.message,
              text: 'Messages',
              ontap: () {
                // Navigator.pushNamed(context, FacultyMessages.id);
              },
            ),
            CustomScreenTile(
              icon: Icons.picture_in_picture_alt,
              text: 'Gallery',
              ontap: () {
                // Navigator.pushNamed(context, FacultyGallery.id);
              },
            ),
            CustomScreenTile(
              icon: Icons.work,
              text: 'Notable Works',
              ontap: () {
                //Navigator.pushNamed(context, NotableWorks.id);
              },
            ),
            CustomScreenTile(
              icon: Icons.people,
              text: 'Alumin',
              ontap: () {
                //Navigator.pushNamed(context, FacultyAluminni.id);
              },
            ),
            CustomScreenTile(
              icon: Icons.build,
              text: 'Faculty Structure',
              ontap: () {
                // Navigator.pushNamed(context, FacultyStructure.id);
              },
            ),
          ],
        ),
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
                            'images/11.jpg',
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
              DependentDropDown(),
            ],
          ),
        ),
      ),
    );
  }
}
