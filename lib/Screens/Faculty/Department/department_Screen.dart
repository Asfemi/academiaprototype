//import 'package:academia/Components/Custom_screen_tile.dart';
import 'package:academiaprototype/Components/Custom_screen_tile.dart';
import 'package:academiaprototype/Components/Show dialog.dart';
import 'package:academiaprototype/Screens/General/__mini_cafe_time_tabe.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DepartmentScreen extends StatefulWidget {
  static String id = 'department_Screen';

  @override
  _DepartmentScreenState createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.menu),
        title: Text('Department of Mech Engr'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add),
        onPressed: () {
          showMainDialog<DialogAction>(
              context: context,
              child: AlertDialog(
                  title: const Text(
                    'Time Table',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                  content: SizedBox(
                    height: size.height * 0.5,
                    width: size.width * 0.9,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '#Add a course',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Add a tag')),
                        SizedBox(height: 30),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 10,
                                  color: kPrimaryColor.withOpacity(0.23),
                                ),
                              ],
                            ),
                            child: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        child: const Text('Okay',
                            style: TextStyle(color: Colors.green)),
                        onPressed: () {
                          //Todo: set a firebase option to add time table data
                          // Navigator.pop(context, DialogAction.disagree);
                        }),
                    Spacer(),
                    TextButton(
                        child: const Text('Cancel',
                            style: TextStyle(color: Colors.red)),
                        onPressed: () {
                          Navigator.pop(context, DialogAction.cancel);
                        }),
                  ]));
        },
      ),
      body: SizedBox(
        height: size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  // color: Colors.green,
                  height: size.height * 0.3,
                  child: DepartmentTimeTable(size: size),
                ),
                SizedBox(height: 50),
                CustomScreenTile(
                  icon: Icons.notifications_none,
                  text: 'Noctifications',
                ),
                CustomScreenTile(
                  icon: Icons.contact_mail,
                  text: 'Contacts',
                ),
                CustomScreenTile(
                  icon: Icons.insert_photo,
                  text: 'Department Gallery',
                ),
                CustomScreenTile(
                  icon: Icons.event,
                  text: 'Calender/Events',
                ),
                CustomScreenTile(
                  icon: Icons.note,
                  text: 'General info',
                ),
                CustomScreenTile(
                  icon: Icons.people,
                  text: 'Alumini',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
