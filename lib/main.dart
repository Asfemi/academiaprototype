import 'package:academiaprototype/Screens/Articles/articlesHome_Screen.dart';
import 'package:academiaprototype/Screens/Articles/articles_Screen.dart';
import 'package:academiaprototype/Screens/Clubs/clubs_Screen.dart';
import 'package:academiaprototype/Screens/Faculty/FacultyPage.dart';
import 'package:academiaprototype/Screens/General/general_Screen.dart';
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
          SwipeNavigation.id: (context) => SwipeNavigation(),
          HomeScreen.id: (context) => HomeScreen(),
          ArticlesHomeScreen.id: (context) => ArticlesHomeScreen(),
          ArticlesScreen.id: (context) => ArticlesScreen(),
          SportsScreen.id: (context) => SportsScreen(),
          ClubsScreen.id: (context) => ClubsScreen(),
          LibraryScreen.id: (context) => LibraryScreen(),
          ClassesScreen.id: (context) => ClassesScreen(),
          FacultyPage.id: (context) => FacultyPage(),
          GeneralScreen.id: (context) => GeneralScreen(),
        });
  }
}
