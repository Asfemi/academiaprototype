import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class SportsScreen extends StatefulWidget {
  static String id = 'sports_Screen';

  @override
  _SportsScreenState createState() => _SportsScreenState();
}

String selectedSport = 'Football';

List<String> sportTypes = [
  'BasketBall',
  'Football',
  'Tennis',
  'Table Tennis',
];

List<String> litems = [];

List<DropdownMenuItem> getDropdownItem() {
  List<DropdownMenuItem<String>> dropdownItems = [];

  for (String sports in sportTypes) {
    var newItem = DropdownMenuItem(
      child: Text(
        sports,
        style: TextStyle(
          color: kPrimaryTextColor,
        ),
      ),
      value: sports,
    );

    dropdownItems.add(newItem);
  }

  return dropdownItems;
}

class _SportsScreenState extends State<SportsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
//        title: Text('Sports'),
//        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          color: kPrimaryTextColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
//                      border: Border.all(
//                        color: kPrimaryColor,
//                        style: BorderStyle.solid,
//                      ),
//                      image: DecorationImage(
//                        image: AssetImage("images/200h.gif"),
//                        fit: BoxFit.fill,
//                      ),
                        ),
                    child: DropdownButton<String>(
                      value: selectedSport,
                      onChanged: (value) {
                        setState(() {
                          value = selectedSport;
                        });
                      },
                      items: getDropdownItem(),
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * 0.005,
                width: size.width * 0.045,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ListView.builder(
                itemCount: litems.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new Text('index');
                },
              ),
              Container(
//         TODO: regularize this news widget in the ausa, sports, clubs screens
                height: size.shortestSide,
                width: size.shortestSide / 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor,
                      offset: Offset.fromDirection(0, 2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: kPrimaryColor,
                        width: size.width - 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sponsors for active sports men',
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'the university chairman...',
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        width: size.width - 10,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/27.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        //color: Colors.blue,
                        width: size.width - 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//training time,
// sports news
