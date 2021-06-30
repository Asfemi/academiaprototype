import 'package:academiaprototype/Components/gist_box.dart';
import 'package:academiaprototype/Components/trending_box.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class DiscussionsScreen extends StatefulWidget {
  static String id = 'discussions_Screen';

  @override
  _DiscussionsScreenState createState() => _DiscussionsScreenState();
}

class _DiscussionsScreenState extends State<DiscussionsScreen> {
  String search;
  double likesCount = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'images/11.jpg',
                      fit: BoxFit.fill,
                      height: size.height * 0.05,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    width: size.width * 0.70,
                    height: size.height * 0.05,
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.text,
                        onChanged: (value) {
                          search = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: kPrimaryColor.withOpacity(0.7)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          fillColor: Colors.white30,
                          filled: true,
                          suffixIcon: Icon(
                            //TODO: fix a proper line icon search icon here
                            Icons.search,
                            color: kPrimaryColor.withOpacity(0.5),
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    size: 40,
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                color: Color(0xffdae0e6),
                height: size.height,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListView(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Trending today',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              TrendingBox(
                                image: 'images/background.png',
                                topic: 'Animaniacs',
                                info:
                                    'I started watching the animaniacs reboot',
                              ),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              TrendingBox(
                                image: 'images/bg1.png',
                                topic: 'Tucker Carlson',
                                info: 'Unironically posted to a/tucker_carlson',
                              ),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              TrendingBox(
                                image: 'assets/bb6.jpg',
                                topic: 'controvetial shit',
                                info: 'Omo! omo',
                              ),
                            ],
                          ),
                        ),
                      ),
                      GistBox(
                        size: size,
                        topic: 'a/AskAcademia',
                        authur: 'posted by u/tomiwa . 12h',
                        award1: Icons.thumb_up,
                        award2: Icons.pool,
                        award3: Icons.fast_forward,
                        subject:
                            'For those who grew up poor, what did you consider a luxury?',
                        image: '',
                        ontap1: () {
                          setState(() {
                            likesCount++;
                          });
                        },
                        ontap2: () {
                          setState(() {
                            likesCount--;
                          });
                        },
                        likes: '$likesCount k',
                      ),
                      GistBox(
                        size: size,
                        topic: 'a/Interiors',
                        authur: 'posted by u/faithinteriors . 13h',
                        award1: Icons.near_me,
                        award2: Icons.g_translate,
                        award3: Icons.brightness_medium,
                        subject: 'whats your dream house like?',
                        image: 'assets/bb3.jpg',
                        ontap1: () {
                          setState(() {
                            likesCount++;
                          });
                        },
                        ontap2: () {
                          setState(() {
                            likesCount--;
                          });
                        },
                        likes: '$likesCount k',
                      ),
                      GistBox(
                        size: size,
                        topic: 'a/Fashy',
                        authur: 'posted by u/ecce . 18h',
                        award1: Icons.delete_forever,
                        award2: Icons.looks,
                        award3: Icons.add_shopping_cart,
                        subject: 'Latest latest boo?',
                        image: 'assets/bb8.jpg',
                        ontap1: () {
                          setState(() {
                            likesCount++;
                          });
                        },
                        ontap2: () {
                          setState(() {
                            likesCount--;
                          });
                        },
                        likes: '$likesCount k',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: use the company logo as the image beside the search-field
//#dae0e6
