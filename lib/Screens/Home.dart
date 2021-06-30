import 'package:academiaprototype/Components/home_box.dart';
import 'package:academiaprototype/Components/home_widget.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_Screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.settings,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                  ),
                ),
                // Divider(
                //   indent: size.width * 0.002,
                //   endIndent: size.width * 0.98 ,
                //   color: Colors.green,
                //   thickness: 5,
                // ),
                Container(
                  height: size.height * 0.005,
                  width: size.width * 0.045,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Free Blink of the Day',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'selected by our curators',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: kPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                      Home_Widget(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Work together any where',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Mr Sam and Prof Ay',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.share_outlined,
                              color: kPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'A handBook on working Remotely - successfully - for Indiviuals, Teams and Managers',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Learning paths',
                  style: kHeadingText2,
                ),
                Text(
                  'Guilded learning on popular topics',
                  style: kHeadingText3,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HomeBox(
                        tag: '1',
                        onPressed: () {
                          //Navigator.pushNamed(context, FacultyScreen.id);
                        },
                        image: 'assets/fbms.jpg',
                        text: 'Faculty',
                        text2: 'department, contact...',
                      ),
                      HomeBox(
                        tag: '2',
                        onPressed: () {
                          // Navigator.pushNamed(context, LibraryScreen.id);
                        },
                        image: 'assets/11.PNG',
                        text: 'Library',
                        text2: 'online, offline books...',
                      ),
                      HomeBox(
                        tag: '3',
                        onPressed: () {
                          // Navigator.pushNamed(context, ClubsScreen.id);
                        },
                        image: 'assets/fbss.jpg',
                        text: 'Clubs',
                        text2: 'makeup, cooking...',
                      ),
                      HomeBox(
                        tag: '6',
                        onPressed: () {
                          // Navigator.pushNamed(context, SportsScreen.id);
                        },
                        image: 'assets/29.jpg',
                        text: 'Sports',
                        text2: 'basketball, football...',
                      ),
                      HomeBox(
                        tag: '5',
                        onPressed: () {
                          // Navigator.pushNamed(context, GeneralScreen.id);
                        },
                        image: 'assets/5.PNG',
                        text: 'General',
                        text2: 'cafeterial, maps, hostel...',
                      ),
                      HomeBox(
                        tag: '4',
                        onPressed: () {
                          // Navigator.pushNamed(context, AusaScreen.id);
                        },
                        image: 'assets/fol.jpg',
                        text: 'Ausa',
                        text2: 'dinner, welfare...',
                      ),
                      // HomeTab(
                      //   size: size,
                      //   color: Colors.yellow,
                      //   writeUp: '8 Days to Unlocking Languages',
                      // ),
                      // HomeTab(
                      //   size: size,
                      //   color: Colors.deepPurple,
                      //   writeUp: '8 Days to Unlocking Languages',
                      // ),
                      // HomeTab(
                      //   size: size,
                      //   color: Colors.green,
                      //   writeUp: '8 Days to Unlocking Languages',
                      // ),
                      // HomeTab(
                      //   size: size,
                      //   color: Colors.pinkAccent,
                      //   writeUp: '8 Days to Unlocking Languages',
                      // ),
                      // HomeTab(
                      //   size: size,
                      //   color: Colors.blueGrey,
                      //   writeUp: '8 Days to Unlocking Languages',
                      // ),
                      // HomeTab(
                      //   size: size,
                      //   color: Colors.deepOrange,
                      //   writeUp: '8 Days to Unlocking Languages',
                      // ),
                    ],
                  ),
                ),
                SizedBox(height: 150),
                dashboard(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget dashboard(context) {
  Size size = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Container(
        height: size.height * 0.25,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                bottom: 6 + 20.0,
              ),
              height: size.height * 0.25 - 25,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(36),
                  bottomLeft: Radius.circular(36),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: size.height * 0.01,
                      top: size.height * 0.01,
                    ),
                    child: Column(
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              'Hi,',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '',
                              //userNameString(),
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      //bottom: 1.0,
                      top: 5.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.pushNamed(
                        //     context, ProfileScreen.id);
                      },
                      child: ClipOval(
                        child: Image.asset(
                          'assets/1.jpg',
                          fit: BoxFit.fill,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 25,
                      color: kPrimaryColor.withOpacity(0.33),
                    ),
                  ],
                ),
                child: IgnorePointer(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: kPrimaryColor.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: size.height * 0.03),
      Row(
        children: <Widget>[
          Expanded(flex: 1, child: Container()),
          HomeBox(
            tag: '1',
            onPressed: () {
              //Navigator.pushNamed(context, FacultyScreen.id);
            },
            image: 'assets/fbms.jpg',
            text: 'Faculty',
            text2: 'department, contact...',
          ),
          Expanded(flex: 2, child: Container()),
          HomeBox(
            tag: '2',
            onPressed: () {
              // Navigator.pushNamed(context, LibraryScreen.id);
            },
            image: 'assets/11.PNG',
            text: 'Library',
            text2: 'online, offline books...',
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
      SizedBox(height: 20),
      Row(
        children: [
          Expanded(flex: 1, child: Container()),
          HomeBox(
            tag: '3',
            onPressed: () {
              // Navigator.pushNamed(context, ClubsScreen.id);
            },
            image: 'assets/fbss.jpg',
            text: 'Clubs',
            text2: 'makeup, cooking...',
          ),
          Expanded(flex: 2, child: Container()),
          HomeBox(
            tag: '6',
            onPressed: () {
              // Navigator.pushNamed(context, SportsScreen.id);
            },
            image: 'assets/29.jpg',
            text: 'Sports',
            text2: 'basketball, football...',
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
      SizedBox(height: 20),
      Row(
        children: <Widget>[
          Expanded(flex: 1, child: Container()),
          HomeBox(
            tag: '5',
            onPressed: () {
              // Navigator.pushNamed(context, GeneralScreen.id);
            },
            image: 'assets/5.PNG',
            text: 'General',
            text2: 'cafeterial, maps, hostel...',
          ),
          Expanded(flex: 2, child: Container()),
          HomeBox(
            tag: '4',
            onPressed: () {
              // Navigator.pushNamed(context, AusaScreen.id);
            },
            image: 'assets/fol.jpg',
            text: 'Ausa',
            text2: 'dinner, welfare...',
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
//                    PreferenceList(),
    ],
  );
}
