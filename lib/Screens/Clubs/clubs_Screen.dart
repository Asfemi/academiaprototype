import 'package:academiaprototype/Components/Custom_screen_tile.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class ClubsScreen extends StatefulWidget {
  static String id = 'clubs_Screen';

  @override
  _ClubsScreenState createState() => _ClubsScreenState();
}

String selectedClub = 'Skill';

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

    return Scaffold(
      appBar: AppBar(
        title: Text('Clubs'),
        centerTitle: true,
      ),
      //TODO: design clubs screen
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: '3',
//                child: ImageSlider(
//                  heightt: 0.5,
//                  imagePath: 'Mix',
//                  imageList: [
//                    '1.PNG',
//                    '2.PNG',
//                    '3.PNG',
//                    '4.PNG',
//                    '5.PNG',
//                    '6.PNG',
//                    '7.PNG',
//                    '8.PNG',
//                    '9.PNG',
//                    '10.PNG',
//                    '11.PNG',
//                    '12.PNG',
//                    '13.PNG',
//                    '14.PNG',
//                    '15.PNG',
//                    '16.PNG',
//                    '17.PNG',
//                    '18.PNG',
//                    '19.PNG',
//                    '20.PNG',
//                    '21.PNG',
//                    '22.PNG',
//                    '23.PNG',
//                    '24.PNG',
//                    '25.PNG',
//                  ],
//                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(
                      color: kPrimaryColor,
                      style: BorderStyle.solid,
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/bb8.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: DropdownButton<String>(
                    value: selectedClub,
                    onChanged: (value) {},
                    items: getDropdownItem(),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Text(
                  'Acquire, Exibit, Enhance your skills through the Following Entrepreneural Clubs',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          CustomScreenTile(
            text: 'Fashion Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Agro Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Beauty Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Home Makers Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Bakers Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Aeshetics Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Sports Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Entertainment Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Literary Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Masters Chef Club',
            icon: Icons.collections,
          ),
          CustomScreenTile(
            text: 'Techical Club',
            icon: Icons.collections,
          ),
        ],
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
