import 'package:academiaprototype/Screens/Home.dart';
import 'package:academiaprototype/Screens/classes_Screen.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/navigation/scroll_navigation.dart';

class SwipeNavigation extends StatelessWidget {
  static String id = 'snav';

  //const EasyHorizontalNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollNavigation(
      bodyStyle: NavigationBodyStyle(
        background: kBackGroundColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      barStyle: NavigationBarStyle(
        background: kBackGroundColor,
        elevation: 0.0,
      ),
      pages: [
        HomeScreen(),
        ClassesScreen(),
      ],
      items: const [
        ScrollNavigationItem(
            title: "Home",
            icon: Icon(
              Icons.home,
              color: kPrimaryColor,
            ),
            activeIcon: Icon(
              Icons.verified_user,
              color: kPrimaryColor,
            )),
//        ScrollNavigationItem(
//          title: "Articles",
//          icon: Icon(
//            LineIcons.bookOpen,
//            color: kPrimaryColor,
//          ),
//        ),
//        ScrollNavigationItem(
//          title: "Chat",
//          icon: Icon(
//            Icons.mail_outline,
//            color: kPrimaryColor,
//          ),
//          activeIcon: Icon(
//            Icons.email,
//            color: kPrimaryColor,
//          ),
//        ),
        ScrollNavigationItem(
            title: "Classes",
            icon: Icon(
              LineIcons.book,
              color: kPrimaryColor,
            ),
            activeIcon: Icon(
              Icons.book_outlined,
              color: kPrimaryColor,
            )),

//        ScrollNavigationItem(
//          title: "Gist",
//          icon: Icon(
//            Icons.people,
//            color: kPrimaryColor,
//          ),
//          activeIcon: Icon(
//            Icons.person,
//            color: kPrimaryColor,
//          ),
//        ),
      ],
    );
  }
}
