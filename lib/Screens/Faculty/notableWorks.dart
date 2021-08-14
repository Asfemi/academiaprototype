import 'package:flutter/material.dart';

class NotableWorks extends StatefulWidget {
  static String id = 'NotableWorks';

  @override
  _NotableWorksState createState() => _NotableWorksState();
}

//TODO: this should now contain the aluminni screen
class _NotableWorksState extends State<NotableWorks> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notable Works',
          //style: TextStyle(fontSize: ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.all(4),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.80,
                  width: size.width * 0.45,
                  child: Image.network(''),
                ),
                Text(''),
                Text(''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
