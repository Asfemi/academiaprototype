import 'package:flutter/material.dart';

class DepartmentGallery extends StatefulWidget {
  static String id = 'departmentGallery';

  @override
  _DepartmentGalleryState createState() => _DepartmentGalleryState();
}

class _DepartmentGalleryState extends State<DepartmentGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
//          TODO: create a 2 rowed grid to display images
//        TODO: each element is to be a stack with the image and a white text displayed on it
        ],
      ),
    );
  }
}
