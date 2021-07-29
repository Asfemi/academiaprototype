import 'package:academiaprototype/Screens/General/table_container.dart';
import 'package:flutter/material.dart';

class MiniCafeTimeTable extends StatelessWidget {
  const MiniCafeTimeTable({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: FlexColumnWidth(2.3),
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      border: TableBorder.all(),
      children: [
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('day'),
            ),
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Afternoon:',
            ),
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Evening:',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Mon',
            ),
            TableContainer(
              size: size,
              color: Colors.red.shade400,
              text: 'swallow',
            ),
            TableContainer(
              size: size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Tue',
            ),
            TableContainer(
              size: size,
              color: Colors.pink.shade200,
              text: 'yam ',
            ),
            TableContainer(
              size: size,
              color: Colors.deepOrange.shade300,
              text: 'spag/moi moi',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Wed',
            ),
            TableContainer(
              size: size,
              color: Colors.green.shade300,
              text: 'beans',
            ),
            TableContainer(
              size: size,
              color: Colors.red.shade300,
              text: 'swallow',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Thur',
            ),
            TableContainer(
              size: size,
              color: Colors.indigo.shade300,
              text: 'rice',
            ),
            TableContainer(
              size: size,
              color: Colors.deepOrange.shade300,
              text: 'spagetti',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Fri',
            ),
            TableContainer(
              size: size,
              color: Colors.green.shade300,
              text: 'beans',
            ),
            TableContainer(
              size: size,
              color: Colors.deepOrange.shade300,
              text: 'spagetti',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Sat',
            ),
            TableContainer(
              size: size,
              color: Colors.amber.shade300,
              text: 'rice',
            ),
            TableContainer(
              size: size,
              color: Colors.red.shade300,
              text: 'swallow',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Sun',
            ),
            TableContainer(
              size: size,
              color: Colors.blue.shade300,
              text: 'rice',
            ),
            TableContainer(
              size: size,
              color: Colors.deepOrange.shade300,
              text: 'spag/moi moi',
            ),
          ],
        ),
      ],
    );
  }
}
