//import 'package:academia/Components/calender_tile.dart';
import 'package:academiaprototype/Components/ComingSoon.dart';
import 'package:flutter/material.dart';

class FacultyCalender extends StatefulWidget {
  static String id = 'facultycalender/events';

  @override
  _FacultyCalenderState createState() => _FacultyCalenderState();
}

//Todo: set up a proper calender
//Todo: This should also carry departmental shedules
class _FacultyCalenderState extends State<FacultyCalender> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Academic Calender'),
        centerTitle: true,
        actions: [],
      ),
      body: ComingSoon(no: 1, theme: false),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       CalenderTile(),
      //       CalenderTile(),
      //     ],
      //   ),
      // ),
    );
  }
}

// make this calender and events
