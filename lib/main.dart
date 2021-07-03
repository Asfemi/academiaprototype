import 'package:academiaprototype/Screens/Articles/articlesHome_Screen.dart';
import 'package:academiaprototype/Screens/Articles/articles_Screen.dart';
import 'package:academiaprototype/Screens/Clubs/clubs_Screen.dart';
import 'package:academiaprototype/Screens/Home.dart';
import 'package:academiaprototype/Screens/Library/library_Screen.dart';
import 'package:academiaprototype/Screens/sports_Screen.dart';
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
        title: 'Flutter Demo',
        theme: ThemeData(),
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          ArticlesHomeScreen.id: (context) => ArticlesHomeScreen(),
          ArticlesScreen.id: (context) => ArticlesScreen(),
          SportsScreen.id: (context) => SportsScreen(),
          ClubsScreen.id: (context) => ClubsScreen(),
          LibraryScreen.id: (context) => LibraryScreen(),
        });
  }
}