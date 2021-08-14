import 'package:academiaprototype/Screens/Articles/articlesHome_Screen.dart';
import 'package:academiaprototype/Screens/Articles/articles_Screen.dart';
import 'package:academiaprototype/Screens/Ausa/AusaNavigation.dart';
import 'package:academiaprototype/Screens/Ausa/ausa_Screen.dart';
import 'package:academiaprototype/Screens/Clubs/clubs_Screen.dart';
import 'package:academiaprototype/Screens/Faculty/Department/departGallery.dart';
import 'package:academiaprototype/Screens/Faculty/Department/department_Screen.dart';
import 'package:academiaprototype/Screens/Faculty/Department/depcontacts.dart';
import 'package:academiaprototype/Screens/Faculty/FacultyPage.dart';
import 'package:academiaprototype/Screens/Faculty/calender.dart';
import 'package:academiaprototype/Screens/Faculty/facultyGallery.dart';
import 'package:academiaprototype/Screens/Faculty/generalInfo.dart';
import 'package:academiaprototype/Screens/Faculty/notableWorks.dart';
import 'package:academiaprototype/Screens/General/GenGallery.dart';
import 'package:academiaprototype/Screens/General/MapsScreen.dart';
import 'package:academiaprototype/Screens/General/Review.dart';
import 'package:academiaprototype/Screens/General/Security.dart';
import 'package:academiaprototype/Screens/General/Shop/Business.dart';
import 'package:academiaprototype/Screens/General/chapel_Screen.dart';
//import 'package:academiaprototype/Screens/General/Religion.dart';
import 'package:academiaprototype/Screens/General/general_Screen.dart';
import 'package:academiaprototype/Screens/General/hostel_Screen.dart';
import 'package:academiaprototype/Screens/Home.dart';
import 'package:academiaprototype/Screens/Library/library_Screen.dart';
import 'package:academiaprototype/Screens/classes_Screen.dart';
import 'package:academiaprototype/Screens/sports_Screen.dart';
import 'package:academiaprototype/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Academia',
        theme: ThemeData(),
        initialRoute: SwipeNavigation.id,
        routes: {
          //********* General Pages Routes ************//
          SwipeNavigation.id: (context) => SwipeNavigation(),
          ///////////Classes page Routes///////////
          ClassesScreen.id: (context) => ClassesScreen(),
          //////////Home Screen Routes///////////
          HomeScreen.id: (context) => HomeScreen(),
          //General screen pages
          GeneralScreen.id: (context) => GeneralScreen(),
          ChapelScreen.id: (context) => ChapelScreen(),
          ReviewPage.id: (context) => ReviewPage(),
          Security.id: (context) => Security(),
          MapsScreen.id: (context) => MapsScreen(),
          GeneralGallery.id: (context) => GeneralGallery(),
          BusinessScreen.id: (context) => BusinessScreen(),
          HostelScreen.id: (context) => HostelScreen(),
          //Faculty Screen pages
          FacultyPage.id: (context) => FacultyPage(),
          FacultyCalender.id: (context) => FacultyCalender(),
          FacultyGallery.id: (context) => FacultyGallery(),
          FacultyGenInfo.id: (context) => FacultyGenInfo(),
          NotableWorks.id: (context) => NotableWorks(),
          // ***Department Screen Routes***
          DepartmentScreen.id: (context) => DepartmentScreen(),
          DepartmentContacts.id: (context) => DepartmentContacts(),
          DepartmentGallery.id: (context) => DepartmentGallery(),
          //Sports Screen routes
          SportsScreen.id: (context) => SportsScreen(),
          //Clubs Screen routes
          ClubsScreen.id: (context) => ClubsScreen(),
          //Library Screen Routes
          LibraryScreen.id: (context) => LibraryScreen(),
          //Ausa Screen routes
          AusaNavigation.id: (context) => AusaNavigation(),
          AusaScreen.id: (context) => AusaScreen(),
          ///////////Articles page Routes/////////////
          ArticlesHomeScreen.id: (context) => ArticlesHomeScreen(),
          ArticlesScreen.id: (context) => ArticlesScreen(),
        });
  }
}
