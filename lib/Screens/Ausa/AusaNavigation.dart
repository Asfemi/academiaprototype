import 'package:academiaprototype/Screens/Ausa/AusaOverview.dart';
import 'package:academiaprototype/Screens/Ausa/ausa_Screen.dart';
import 'package:academiaprototype/Screens/Ausa/feeds.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/navigation/scroll_navigation.dart';

class AusaNavigation extends StatelessWidget {
  static String id = 'Anav';

  //const EasyHorizontalNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollNavigation(
      bodyStyle: NavigationBodyStyle(
        background: Colors.grey.shade200,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      barStyle: NavigationBarStyle(
        background: kBackGroundColor,
        elevation: 0.0,
      ),
      pages: [
        AusaScreen(),
        AusaOverview(),
        AusaFeeds(),
      ],
      items: const [
        ScrollNavigationItem(
            title: "SL",
            icon: Icon(
              LineIcons.peopleCarry,
              color: kPrimaryColor,
            ),
            activeIcon: Icon(
              Icons.verified_user,
              color: kPrimaryColor,
            )),
        ScrollNavigationItem(
            title: "Overview",
            icon: Icon(
              LineIcons.opera,
              color: kPrimaryColor,
            ),
            activeIcon: Icon(
              Icons.book_outlined,
              color: kPrimaryColor,
            )),
        ScrollNavigationItem(
            title: "Feeds",
            icon: Icon(
              Icons.notifications,
              color: kPrimaryColor,
            ),
            activeIcon: Icon(
              Icons.notifications_paused,
              color: kPrimaryColor,
            )),
      ],
    );
  }
}
