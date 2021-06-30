//make a 3d librabry and display it as the library screenimport 'package:academia/Screens/';
import 'package:academiaprototype/Components/library_book.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  static String id = 'library_Screen';

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Todo: build a 3d library

    return Scaffold(
      appBar: AppBar(
        title: Text('library'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: size.height * 0.6,
              child: Stack(
                children: <Widget>[
                  Hero(
                    tag: '2',
//                    child: ImageSlider(
//              heightt: 0.5,
//              imagePath: 'LibraryScreen',
//              imageList: [
//                'l5.PNG',
//                'aa2.PNG',
//                'a3.PNG',
//              ],
//            ),
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 20),
                            blurRadius: 25,
                            color: kPrimaryColor.withOpacity(0.33),
                          ),
                        ],
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: 'Search and Browser',
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
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          LibraryBook(
                            image: 'images/25.jpg',
                            text1: 'Engineering maths',
                            text2: 'mr sam',
                          ),
                          LibraryBook(
                            image: 'images/21.jpg',
                            text1: 'Bla bla bla',
                            text2: 'the sheep said',
                          ),
                          LibraryBook(
                            image: 'images/22.jpg',
                            text1: 'Batman is trash',
                            text2: 'batwoman\'s ex',
                          ),
                          LibraryBook(
                            image: 'images/23.jpg',
                            text1: 'Not without my sister',
                            text2: 'An author itofa knows',
                          ),
                          LibraryBook(
                            image: 'images/24.jpg',
                            text1: 'the shy master',
                            text2: 'sams alter ego',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Top Picks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  LibraryBook(
                    image: 'images/25.jpg',
                    text1: 'Engineering maths',
                    text2: 'mr sam',
                  ),
                  LibraryBook(
                    image: 'images/21.jpg',
                    text1: 'Bla bla bla',
                    text2: 'the sheep said',
                  ),
                  LibraryBook(
                    image: 'images/22.jpg',
                    text1: 'Batman is trash',
                    text2: 'batwoman\'s ex',
                  ),
                  LibraryBook(
                    image: 'images/23.jpg',
                    text1: 'Not without my sister',
                    text2: 'An author itofa knows',
                  ),
                  LibraryBook(
                    image: 'images/24.jpg',
                    text1: 'the shy master',
                    text2: 'sams alter ego',
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Engineering',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  LibraryBook(
                    image: 'images/23.jpg',
                    text1: 'the money smart woman',
                    text2: 'arese agu',
                  ),
                  LibraryBook(
                    image: 'images/21.jpg',
                    text1: 'the laws of human nature',
                    text2: 'robert greene',
                  ),
                  LibraryBook(
                    image: 'images/24.jpg',
                    text1: 'intro to international relations',
                    text2: 'tunde adeniron',
                  ),
                  LibraryBook(
                    image: 'images/21.jpg',
                    text1: 'the deadly ones',
                    text2: 'a really strange dude',
                  ),
                  LibraryBook(
                    image: 'images/25.jpg',
                    text1: 'kind strangers mechanics',
                    text2: 'a really strange dude',
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Arts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  LibraryBook(
                      image: 'images/24.jpg',
                      text1: 'Musical pathways',
                      text2: 'dr edit'),
                  LibraryBook(
                    image: 'images/25.jpg',
                    text1: 'horizontal planes in 5 dimension space',
                    text2: 'mr sam',
                  ),
                  LibraryBook(
                    image: 'images/21.jpg',
                    text1: 'sules way',
                    text2: 'dr sule',
                  ),
                  LibraryBook(
                    image: 'images/23.jpg',
                    text1: 'too much on me',
                    text2: 'sara madson',
                  ),
                  LibraryBook(
                    image: 'images/22.jpg',
                    text1: 'more on more',
                    text2: 'Mrs clerk',
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Sciences',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
