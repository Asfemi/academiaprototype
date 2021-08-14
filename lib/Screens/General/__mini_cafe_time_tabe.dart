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
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Evening:',
              fontsize: 12,
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Mon',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.red.shade400,
              text: 'swallow',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.blue.shade200,
              text: 'rice',
              fontsize: 12,
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Tue',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.pink.shade200,
              text: 'yam ',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.deepOrange.shade300,
              text: 'spag/moi moi',
              fontsize: 12,
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Wed',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.green.shade300,
              text: 'beans',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.red.shade300,
              text: 'swallow',
              fontsize: 12,
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Thur',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.indigo.shade300,
              text: 'rice',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.deepOrange.shade300,
              text: 'spagetti',
              fontsize: 12,
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Fri',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.green.shade300,
              text: 'beans',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.deepOrange.shade300,
              text: 'spagetti',
              fontsize: 12,
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Sat',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.amber.shade300,
              text: 'rice',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.red.shade300,
              text: 'swallow',
              fontsize: 12,
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: size,
              color: Colors.white,
              text: 'Sun',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.blue.shade300,
              text: 'rice',
              fontsize: 12,
            ),
            TableContainer(
              size: size,
              color: Colors.deepOrange.shade300,
              text: 'spag/moi moi',
              fontsize: 12,
            ),
          ],
        ),
      ],
    );
  }
}

class DepartmentTimeTable extends StatefulWidget {
  const DepartmentTimeTable({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _DepartmentTimeTableState createState() => _DepartmentTimeTableState();
}

class _DepartmentTimeTableState extends State<DepartmentTimeTable> {
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
              child: Text(
                'Day/Time',
                style: TextStyle(
                  fontSize: 6,
                ),
              ),
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '7am:',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '8am',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '9am',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '10am',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '11am',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '12pm',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '1pm',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '2pm',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '3pm',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '4pm',
              fontsize: 8,
            ),
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: '5pm',
              fontsize: 8,
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: 'Mon',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.red.shade400,
              text: 'swallow',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: 'Tue',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.red.shade400,
              text: 'swallow',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: 'Wed',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.red.shade400,
              text: 'swallow',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: 'Thur',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.red.shade400,
              text: 'swallow',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
          ],
        ),
        TableRow(
          children: [
            TableContainer(
              size: widget.size,
              color: Colors.white,
              text: 'Fri',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.red.shade400,
              text: 'swallow',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
            TableContainer(
              size: widget.size,
              color: Colors.blue.shade200,
              text: 'rice',
            ),
          ],
        ),
      ],
    );
    ;
  }
}
