import 'package:academiaprototype/Components/MyScrollView.dart';
import 'package:academiaprototype/Screens/Clubs/ClubsIndividualScreen.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class ClubsScreen extends StatefulWidget {
  static String id = 'clubs_Screen';

  @override
  _ClubsScreenState createState() => _ClubsScreenState();
}

List<String> sendersList = [
  'fashion ',
  'Agro ',
  'Technical ',
  'Masters Chef ',
  'Beauty ',
  'Home Makers ',
  'Bakers ',
  'Aeshetics ',
  'Sports ',
  'Masters Chef ',
  'Literary ',
];
List<String> images = [
  'assets/dom-aguiar-x6S3Z0vZxj4-unsplash.jpg',
  'assets/matthew-hamilton-BeeMMFF_jso-unsplash.jpg',
  'assets/mike-meyers--haAxbjiHds-unsplash.jpg',
  'assets/alex-gruber-9f55wJpnCwY-unsplash.jpg',
  'assets/33.PNG',
  'assets/umberto-GQ4VBpgPzik-unsplash.jpg',
  'assets/neenu-vimalkumar-S2oy0RCkORY-unsplash.jpg',
  'assets/c-d-x-PDX_a_82obo-unsplash.jpg',
  'assets/eee.jpg',
  'assets/29.jpg',
  'assets/11.PNG',
];

String selectedClub = 'social';

List<String> clubTypes = [
  'skill',
  'social',
  'school',
];

List<DropdownMenuItem> getDropdownItem() {
  List<DropdownMenuItem<String>> dropdownItems = [];

  for (String clubs in clubTypes) {
    var newItem = DropdownMenuItem(
      child: Text(clubs),
      value: clubs,
    );

    dropdownItems.add(newItem);
  }

  return dropdownItems;
}

class _ClubsScreenState extends State<ClubsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final title = 'Clubs';

    return Scaffold(
      //TODO: design clubs screen
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyScrollView(
          title: title,
          backgroundWidget: Image.asset(
            "assets/mike-meyers-IJyXoyGmiZY-unsplash.jpg",
            fit: BoxFit.cover,
          ),
          height: size.height / 2.5,
          leadingWidget: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: kPrimaryColor,
            ),
            tooltip: 'back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actionsList: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                value: selectedClub,
                onChanged: (value) {},
                items: getDropdownItem(),
              ),
            ),
          ],
          bottom: null,
          child: SliverChildBuilderDelegate(
            (context, position) => Padding(
              padding: const EdgeInsets.only(
                  left: 2.0, right: 2.0, top: 8, bottom: 8),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(context, route)
                  Navigator.pushNamed(context, ClubsIndividualScreen.id);
                },
                child: Container(
                  //padding: EdgeInsets.only(top: 4, bottom: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.23),
                          blurRadius: 10,
                          offset: Offset(0, 5))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(images[position]),
                            fit: BoxFit.fill,
                          ),
                          //color: backgroundColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                        ),
                        height: size.height * 0.18,
                        width: size.width * 0.5,
                        //child: Image.asset('assets/101.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 100),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            sendersList[position],
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            childCount: sendersList.length,
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Clubs/Associations',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              ListTile(
                title: Text('School Clubs'),
              ),
              ListTile(
                title: Text("Entretreneural Clubs"),
              ),
              ListTile(
                title: Text('Social Clubs'),
              ),
              ListTile(
                title: Text('Other Clubs'),
              ),
              ListTile(
                title: Text('Add Clubs'),
              ),
              ListTile(
                title: Text('List of Classes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//ListView(
//         children: <Widget>[
//           Stack(
//             children: <Widget>[
//               Positioned(
//                 right: 10,
//                 top: 10,
//                 child: Container(
//                   height: 75,
//                   width: 75,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(15),
//                     ),
//                     border: Border.all(
//                       color: kPrimaryColor,
//                       style: BorderStyle.solid,
//                     ),
//                     image: DecorationImage(
//                       image: AssetImage('assets/bb8.jpg'),
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   child: DropdownButton<String>(
//                     value: selectedClub,
//                     onChanged: (value) {},
//                     items: getDropdownItem(),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 0,
//                 right: 0,
//                 bottom: 0,
//                 child: Text(
//                   'Acquire, Exibit, Enhance your skills through the Following Entrepreneural Clubs',
//                   style: TextStyle(
//                     fontSize: 28,
//                     color: Colors.white,
//                   ),
//                 ),
//               )
//             ],
//           ),
//
//         ],
//       ),
