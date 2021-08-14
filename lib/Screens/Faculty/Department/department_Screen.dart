//import 'package:academia/Components/Custom_screen_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:academiaprototype/Components/Custom_screen_tile.dart';
import 'package:flutter/material.dart';

class DepartmentScreen extends StatefulWidget {
  static String id = 'department_Screen';

  @override
  _DepartmentScreenState createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.menu),
        title: Text('Department of Mech Engr'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Container(
                height: 300,
                child: Table(
                  defaultColumnWidth: FlexColumnWidth(1.5),
                  defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        Text(''),
                        Text('7am'),
                        Text('8am'),
                        Text('9am'),
                        Text('10am'),
                        Text('11am'),
                        Text('12pm'),
                        Text('1pm'),
                        Text('2pm'),
                        Text('3pm'),
                        Text('4pm'),
                        Text('5pm'),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('mon'),
                        Text('fluid mech'),
                        Text('fluid mech'),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('tue'),
                        Text('Auto mobile'),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('wed'),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text('workShop pratice'),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('thur'),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text('Engineering analysis'),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('fri'),
                        Text('control engr'),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                        Text(''),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
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
    );
  }
}
