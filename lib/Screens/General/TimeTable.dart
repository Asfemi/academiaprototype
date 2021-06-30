import 'package:academiaprototype/Components/TimeTableTile.dart';
import 'package:flutter/material.dart';

class TimeTable extends StatelessWidget {
  static String id = 'time table';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Time Table',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          children: [
            //first row
            TimeTableTile(
              heading: 'Day/Time',
              textColor1: Colors.black,
            ),
            TimeTableTile(
              heading: 'Afternoon:',
              subHeading: '12pm-3pm',
              textColor1: Colors.black,
              textColor2: Colors.black,
            ),
            TimeTableTile(
              heading: 'Evening:',
              subHeading: '5pm-7pm',
              textColor1: Colors.black,
              textColor2: Colors.black,
            ),

            //second row
            TimeTableTile(
              heading: 'Sundays',
              textColor1: Colors.black,
            ),
            TimeTableTile(
              heading: 'Rice',
              color: Colors.blue.shade300,
              subHeading: 'jellof rice --fish',
            ),
            TimeTableTile(
              heading: '',
              color: Colors.deepOrange.shade300,
              subHeading: 'spagetti and stew --fish/moi moi --gari',
            ),
            TimeTableTile(
              heading: 'Mondays',
              textColor1: Colors.black,
            ),
            TimeTableTile(
              heading: 'Swallow',
              subHeading: 'eba/semo/amala with egusi/ewedu/efo --meat',
              color: Colors.red.shade400,
            ),
            TimeTableTile(
              heading: 'Rice',
              subHeading: 'rice and beans --fish',
              color: Colors.blue.shade200,
            ),
            //third row
            TimeTableTile(
              heading: 'Tuesdays',
              textColor1: Colors.black,
            ),
            TimeTableTile(
              heading: 'Yam',
              subHeading: 'yam and stew/yam pottage',
              color: Colors.pink.shade200,
            ),
            TimeTableTile(
              heading: '',
              subHeading: 'spagetti and stew --fish/moi moi --gari',
              color: Colors.deepOrange.shade300,
            ),
            //fourth row
            TimeTableTile(
              heading: 'Wednesdays',
              fontSize: 17.5,
              textColor1: Colors.black,
            ),
            TimeTableTile(
              heading: 'Beans',
              color: Colors.green.shade300,
              subHeading: 'beans and stew/ beans pottage',
            ),
            TimeTableTile(
              heading: 'Swallow',
              color: Colors.red.shade300,
              subHeading: 'eba/semo/amala with egusi/ewedu/efo --meat',
            ),
            // fifth row
            TimeTableTile(
              heading: 'Thursdays',
              textColor1: Colors.black,
            ),
            TimeTableTile(
              heading: 'Rice',
              color: Colors.indigo.shade300,
              subHeading: 'rice and stew --meat',
            ),
            TimeTableTile(
              heading: 'Spagetti',
              color: Colors.deepOrange.shade300,
              subHeading: 'jollof spagetti --egg',
            ),
            // sixth row
            TimeTableTile(
              heading: 'Fridays',
              textColor1: Colors.black,
            ),
            TimeTableTile(
              heading: 'Beans',
              color: Colors.green.shade300,
              subHeading: 'beans and stew/beans pottage',
            ),
            TimeTableTile(
              heading: 'Spagetti',
              color: Colors.deepOrange.shade300,
              subHeading: 'jellof spagetti --fish',
            ),
            // seventh row
            TimeTableTile(
              heading: 'Saturdays',
              textColor1: Colors.black,
            ),
            TimeTableTile(
              color: Colors.amber.shade300,
              heading: 'Rice',
              subHeading: 'fried rice and jollof mix --meat',
            ),
            TimeTableTile(
              heading: 'Swallow',
              color: Colors.red.shade300,
              subHeading: 'eba/semo/amala with egusi/ewedu/efo --meat',
            ),
            // eighth row
          ],
        ),
      ),
    );
  }
}
