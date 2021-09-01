import 'package:academiaprototype/Components/home_box.dart';
import 'package:academiaprototype/Components/home_widget.dart';
import 'package:academiaprototype/Screens/Ausa/AusaNavigation.dart';
import 'package:academiaprototype/Screens/Ausa/ausa_Screen.dart';
import 'package:academiaprototype/Screens/Clubs/clubs_Screen.dart';
import 'package:academiaprototype/Screens/Faculty/FacultyPage.dart';
import 'package:academiaprototype/Screens/General/general_Screen.dart';
import 'package:academiaprototype/Screens/Library/library_Screen.dart';
import 'package:academiaprototype/Screens/Sports/sports_Screen.dart';
import 'package:academiaprototype/Screens/news_widget.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_Screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool deactivate = false;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.settings,
                size: 18,
                color: Colors.black54,
              ),
            ),
            Icon(
              Icons.notifications,
              size: 18,
              color: Colors.black54,
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
                    color: kPrimaryColor,
                    fontSize: 40,
                  ),
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
                SizedBox(height: 20),
                Home_Widget(
                  //height: deactivate ? 0.0 : size.shortestSide,
                  onPressed: () {
                    setState(() {
                      deactivate = !deactivate;
                      print('exit was pressed');
                    });
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                  image: 'assets/dom-aguiar-x6S3Z0vZxj4-unsplash.jpg',
                  heading: 'Get more from your money',
                  about:
                      'Get a premium or metal account to enjoy higher limits and distinctive cards',
                ),
                SizedBox(height: deactivate ? 20 : 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Learning paths',
                      //other texts like discover skills, bla bla bla
                      style: kHeadingText2,
                    ),
                    Text(
                      'See all',
                      //other texts like discover skills, bla bla bla
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      HomeBox(
                        light: true,
                        color: Colors.black,
                        icon2: LineIcons.fighterJet,
                        text3: 'Eng',
                        //tag: '1',
                        onPressed: () {
                          Navigator.pushNamed(context, FacultyPage.id);
                        },
                        image:
                            'assets/trung-pham-quoc-YDWwCkdmcKM-unsplash.jpg',
                        text: 'Faculty',
                        text2: 'department, contact...',
                      ),
                      HomeBox(
                        color: Colors.redAccent,
                        icon2: LineIcons.bomb,
                        text3: 'PG',
                        light: true,
                        //tag: '2',
                        onPressed: () {
                          Navigator.pushNamed(context, LibraryScreen.id);
                        },
                        image: 'assets/inaki-del-olmo-NIJuEQw0RKg-unsplash.jpg',
                        text: 'Library',
                        text2: 'online, offline books...',
                      ),
                      HomeBox(
                        color: Colors.black,
                        icon2: LineIcons.smilingFace,
                        text3: 'Open',
                        light: false,
                        //tag: '3',
                        onPressed: () {
                          Navigator.pushNamed(context, ClubsScreen.id);
                        },
                        image: 'assets/absolutvision-82TpEld0_e4-unsplash.jpg',
                        text: 'Clubs',
                        text2: 'makeup, cooking...',
                      ),
                      HomeBox(
                        color: Colors.red,
                        icon2: LineIcons.footballBall,
                        text3: 'Kick',
                        light: false,
                        //tag: '6',
                        onPressed: () {
                          Navigator.pushNamed(context, SportsScreen.id);
                        },
                        image: 'assets/sabri-tuzcu-dVhM3o9BVeg-unsplash.jpg',
                        text: 'Sports',
                        text2: 'basketball, football...',
                      ),
                      HomeBox(
                        color: Colors.green,
                        icon2: LineIcons.lightbulb,
                        text3: 'Sure',
                        light: true,
                        // tag: '5',
                        onPressed: () {
                          Navigator.pushNamed(context, GeneralScreen.id);
                        },
                        image:
                            'assets/neenu-vimalkumar-S2oy0RCkORY-unsplash.jpg',
                        text: 'General',
                        text2: 'cafeterial, maps, hostel...',
                      ), //general
                      HomeBox(
                        color: Colors.black,
                        icon2: LineIcons.weebly,
                        text3: 'We',
                        light: true,
                        //tag: '4',
                        onPressed: () {
                          Navigator.pushNamed(context, AusaNavigation.id);
                        },
                        image: 'assets/june-heredia--9LHFWv5l-M-unsplash.jpg',
                        text: 'Students life',
                        text2: 'dinner, welfare...',
                      ), //Students life
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
                SizedBox(height: 20),
                Text(
                  'Analytics',
                  //other texts like discover skills, bla bla bla
                  style: kHeadingText2,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: size.shortestSide * 0.45,
                      height: size.shortestSide / 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 5,
                            color: kPrimaryColor.withOpacity(0.23),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'spent this week',
                              style: kHeadingText3.copyWith(fontSize: 11),
                            ),
                            Text(
                              '\$0',
                              style: kHeadingText3.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: size.shortestSide * 0.4,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 5,
                                    color: kPrimaryTextColor.withOpacity(0.05),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 5,
                                    color: kPrimaryTextColor.withOpacity(0.05),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 5,
                                    color: kPrimaryTextColor.withOpacity(0.05),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 5,
                                    color: kPrimaryTextColor.withOpacity(0.05),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 5,
                                    color: kPrimaryTextColor.withOpacity(0.05),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 5,
                                    color: kPrimaryTextColor.withOpacity(0.05),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 5,
                                    color: kPrimaryTextColor.withOpacity(0.05),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 5,
                                    color: kPrimaryTextColor.withOpacity(0.05),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 5,
                            color: kPrimaryColor.withOpacity(0.23),
                          ),
                        ],
                      ),
                      width: size.shortestSide * 0.45,
                      height: size.shortestSide / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Track your spending and save more, set up a budget.',
                              style: kHeadingText3.copyWith(fontSize: 11),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
//                                boxShadow: [
//                                  BoxShadow(
//                                    offset: Offset(0, 3),
//                                    blurRadius: 5,
//                                    color: kPrimaryColor.withOpacity(0.23),
//                                  ),
//                                ],
                              ),
                              height: 28,
                              width: 75,
//                              constraints: BoxConstraints(
//                                maxHeight: 20
//                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: kPrimaryColor.shade900,
                                    size: 15.5,
                                  ),
                                  Text(
                                    'Set up',
                                    style: TextStyle(
                                        color: kPrimaryColor.shade900,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Discover activities',
                  //other texts like discover skills, bla bla bla
                  style: kHeadingText2,
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      HomeBox(
                        light: false,
                        color: Colors.black,
                        icon2: Icons.drafts_sharp,
                        text3: 'm3m3',
                        // tag: '1',
                        onPressed: () {
                          //Navigator.pushNamed(context, FacultyScreen.id);
                        },
                        image: 'assets/bermix-studio-b8mwvvFs8Ak-unsplash.jpg',
                        text: 'Faculty',
                        text2: 'department, contact...',
                      ),
                      HomeBox(
                        color: Colors.redAccent,
                        icon2: Icons.drafts_sharp,
                        text3: 'm3m3',
                        light: false,
                        //tag: '2',
                        onPressed: () {
                          // Navigator.pushNamed(context, LibraryScreen.id);
                        },
                        image:
                            'assets/matthew-hamilton-BeeMMFF_jso-unsplash.jpg',
                        text: 'Library',
                        text2: 'online, offline books...',
                      ),
                      HomeBox(
                        color: Colors.yellow,
                        icon2: Icons.drafts_sharp,
                        text3: 'm3m3',
                        light: false,
                        // tag: '3',
                        onPressed: () {
                          // Navigator.pushNamed(context, ClubsScreen.id);
                        },
                        image: 'assets/mike-meyers-IJyXoyGmiZY-unsplash.jpg',
                        text: 'Clubs',
                        text2: 'makeup, cooking...',
                      ),
                      HomeBox(
                        color: Colors.yellowAccent,
                        icon2: Icons.drafts_sharp,
                        text3: 'm3m3',
                        light: false,
                        //tag: '6',
                        onPressed: () {
                          // Navigator.pushNamed(context, SportsScreen.id);
                        },
                        image: 'assets/mike-meyers--haAxbjiHds-unsplash.jpg',
                        text: 'Sports',
                        text2: 'basketball, football...',
                      ),
                      HomeBox(
                        color: Colors.black,
                        icon2: Icons.drafts_sharp,
                        text3: 'm3m3',
                        light: true,
                        // tag: '5',
                        onPressed: () {
                          // Navigator.pushNamed(context, GeneralScreen.id);
                        },
                        image:
                            'assets/neenu-vimalkumar-S2oy0RCkORY-unsplash.jpg',
                        text: 'General',
                        text2: 'cafeterial, maps, hostel...',
                      ),
                      HomeBox(
                        color: Colors.yellow.shade700,
                        icon2: Icons.drafts_sharp,
                        text3: 'm3m3',
                        light: true,
                        //tag: '4',
                        onPressed: () {
                          // Navigator.pushNamed(context, AusaScreen.id);
                        },
                        image: 'assets/c-d-x-PDX_a_82obo-unsplash.jpg',
                        text: 'Screens.Ausa',
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
                SizedBox(height: 10),
                NewsWidget(
                  size: size,
                  color: Colors.pink.shade100,
                  image: 'assets/alex-gruber-9f55wJpnCwY-unsplash.jpg',
                  heading: 'Free Blink of the Day',
                  about: 'Escaping the Toxic Culture of self-love',
                  title: 'You are not Enough (And thats okay)',
                  author: 'Allie Beth stuckey',
                  by: 'selected by our curators',
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.lightBlue,
                      Colors.white,
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.shortestSide / 3,
                          height: size.shortestSide / 3,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/dom-aguiar-x6S3Z0vZxj4-unsplash.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text(
                          'Angela yu',
                          style: kHeadingText1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                //Todo: set up proper drawer items *based on purpular demand.
                children: [],
              ),
            ],
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
            //tag: '1',
            light: true,
            onPressed: () {
              Navigator.pushNamed(context, FacultyPage.id);
              print('faculty botton pressed');
            },
            image: 'assets/fbms.jpg',
            text: 'Faculty',
            text2: 'department, contact...',
          ),
          Expanded(flex: 2, child: Container()),
          HomeBox(
            // tag: '2',
            light: false,
            onPressed: () {
              Navigator.pushNamed(context, LibraryScreen.id);
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
            // tag: '3',
            light: false,
            onPressed: () {
              Navigator.pushNamed(context, ClubsScreen.id);
            },
            image: 'assets/fbss.jpg',
            text: 'Clubs',
            text2: 'makeup, cooking...',
          ),
          Expanded(flex: 2, child: Container()),
          HomeBox(
            //tag: '6',
            light: false,
            onPressed: () {
              Navigator.pushNamed(context, SportsScreen.id);
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
            //tag: '5',
            light: true,
            onPressed: () {
              Navigator.pushNamed(context, GeneralScreen.id);
            },
            image: 'assets/5.PNG',
            text: 'General',
            text2: 'cafeterial, maps, hostel...',
          ),
          Expanded(flex: 2, child: Container()),
          HomeBox(
            // tag: '4',
            light: true,
            onPressed: () {
              Navigator.pushNamed(context, AusaScreen.id);
            },
            image: 'assets/fol.jpg',
            text: 'Screens.Ausa',
            text2: 'dinner, welfare...',
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
//                    PreferenceList(),
    ],
  );
}

// Divider(
//   indent: size.width * 0.002,
//   endIndent: size.width * 0.98 ,
//   color: Colors.green,
//   thickness: 5,
// ),

//                      Padding(
//                        padding: const EdgeInsets.only(bottom: 8.0),
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: [
//                                Text(
//                                  'Free Blink of the Day',
//                                  style: TextStyle(
//                                    color: kPrimaryTextColor,
//                                    fontSize: 19,
//                                    fontWeight: FontWeight.bold,
//                                  ),
//                                ),
//                                Text(
//                                  'selected by our curators',
//                                  style: TextStyle(
//                                    color: kPrimaryTextColor,
//                                    fontSize: 12,
//                                    fontWeight: FontWeight.normal,
//                                  ),
//                                ),
//                              ],
//                            ),
//                            Icon(
//                              Icons.notifications_outlined,
//                              color: kPrimaryTextColor,
//                            ),
//                          ],
//                        ),
//                      ),

//                      Padding(
//                        padding: const EdgeInsets.only(top: 8.0),
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: [
//                                Text(
//                                  'Work together any where',
//                                  style: TextStyle(
//                                    color: kPrimaryTextColor,
//                                    fontSize: 14,
//                                    fontWeight: FontWeight.bold,
//                                  ),
//                                ),
//                                Text(
//                                  'Mr Sam and Prof Ay',
//                                  style: TextStyle(
//                                    color: kPrimaryTextColor,
//                                    fontSize: 12,
//                                    fontWeight: FontWeight.normal,
//                                  ),
//                                ),
//                              ],
//                            ),
//                            Icon(
//                              Icons.share_outlined,
//                              color: kPrimaryTextColor,
//                            ),
//                          ],
//                        ),
//                      ),
//                      Text(
//                        'A handBook on working Remotely - successfully - for Indiviuals, Teams and Managers',
//                        style: TextStyle(
//                          color: kPrimaryTextColor,
//                          fontSize: 12,
//                          fontWeight: FontWeight.normal,
//                        ),
//                      ),

//                Text(
//                  'Guilded learning on popular topics',
//                  style: kHeadingText3,
//                ),

//                Divider(
//                  color: Colors.black26,
//                  thickness: 1,
//                ),
