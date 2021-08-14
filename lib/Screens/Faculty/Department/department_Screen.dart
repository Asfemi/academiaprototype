//import 'package:academia/Components/Custom_screen_tile.dart';
import 'package:academiaprototype/Components/Custom_screen_tile.dart';
import 'package:academiaprototype/Screens/General/__mini_cafe_time_tabe.dart';
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
