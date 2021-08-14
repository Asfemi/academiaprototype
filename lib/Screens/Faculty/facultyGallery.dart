// import 'package:academia/Utilities/constants.dart';
// import 'package:academia/services/storage.dart';
import 'package:academiaprototype/Components/ComingSoon.dart';
import 'package:flutter/material.dart';

class FacultyGallery extends StatefulWidget {
  static String id = 'facultyGallery';

  @override
  _FacultyGalleryState createState() => _FacultyGalleryState();
}

class _FacultyGalleryState extends State<FacultyGallery> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // List<String> i = [
    //   '1.PNG',
    //   '2.PNG',
    //   '3.PNG',
    //   '4.PNG',
    //   '5.PNG',
    //   '6.PNG',
    //   '7.PNG',
    //   '8.PNG',
    //   '9.PNG',
    //   '10.PNG',
    //   '11.PNG',
    //   '12.PNG',
    //   '13.PNG',
    //   '14.PNG',
    //   '15.PNG',
    //   '16.PNG',
    //   '17.PNG',
    //   '18.PNG',
    //   '19.PNG',
    //   '20.PNG',
    //   '21.PNG',
    //   '22.PNG',
    //   '23.PNG',
    //   '24.PNG',
    //   '25.PNG',
    // ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        centerTitle: true,
        actions: [],
      ),
      body: Container(
        //color: Colors.deepOrangeAccent,
        padding: EdgeInsets.all(4),
        // child: GridView.builder(
        //   itemCount: i.length,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 4.0,
        //     mainAxisSpacing: 4.0,
        //   ),
        //   itemBuilder: (BuildContext context, int index) {
        //     return FutureBuilder(
        //       future: FirebaseStorageService().getImage(context, '$i', 'Mix'),
        //       builder: (context, snapshot) {
        //         if (snapshot.connectionState == ConnectionState.done) {
        //           return Container(
        //             width: size.width,
        //             height: size.height * 0.6,
        //             child: snapshot.data,
        //           );
        //         }
        //         if (snapshot.connectionState == ConnectionState.waiting) {
        //           return Container(
        //             width: size.width,
        //             height: size.height * 0.2,
        //           );
        //         }
        //         return Container();
        //       },
        //     );
        //   },
        // ),
        child: ComingSoon(no: 3, theme: true),
      ),
    );
  }
}
