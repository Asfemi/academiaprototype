import 'package:academiaprototype/Components/articlesCard.dart';
import 'package:academiaprototype/Components/genreCard.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class ArticlesHomeScreen extends StatefulWidget {
  static String id = 'articlesHome_Screen';

  @override
  _ArticlesHomeScreenState createState() => _ArticlesHomeScreenState();
}

//TODO: make the articles bubble rounded and spaced from each other

class _ArticlesHomeScreenState extends State<ArticlesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text('Articles'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  children: <Widget>[
                    GenreCard(
                      colour: Colors.green,
                      text: 'Philosophy',
                    ),
                    GenreCard(
                      colour: Colors.yellow,
                      text: 'Music',
                    ),
                    GenreCard(
                      colour: Colors.orange,
                      text: 'Sciences',
                    ),
                    GenreCard(
                      colour: Colors.pink,
                      text: 'Arts',
                    ),
                    GenreCard(
                      colour: Colors.purple,
                      text: 'Culture',
                    ),
                    GenreCard(
                      colour: Colors.cyan,
                      text: 'Engrr',
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                'Hot topics',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 10),
            // Divider(color: Colors.black),
            ArticleCard(
              text1: 'philosophy',
              text2: 'The power of doing Nothing',
              text3: 'Mister Ayodele',
              text4: 'And the man thought to be wrong said...',
              textL1: '2 days ago',
              textL2: '5 min read',
              image: 'images/11.jpg',
            ),
            //Divider(color: Colors.black),
            ArticleCard(
              text1: 'philosophy',
              text2: 'The power of doing Nothing',
              text3: 'Mister Ayodele',
              text4: 'And the man thought to be wrong said...',
              textL1: '2 days ago',
              textL2: '5 min read',
              image: 'images/11.jpg',
            ),
            // Divider(color: Colors.black),
            ArticleCard(
              text1: 'philosophy',
              text2: 'The power of doing Nothing',
              text3: 'Mister Ayodele',
              text4: 'And the man thought to be wrong said...',
              textL1: '2 days ago',
              textL2: '5 min read',
              image: 'images/11.jpg',
            ),
            //Divider(color: Colors.black),
            ArticleCard(
              text1: 'philosophy',
              text2: 'The power of doing Nothing',
              text3: 'Mister Ayodele',
              text4: 'And the man thought to be wrong said...',
              textL1: '2 days ago',
              textL2: '5 min read',
              image: 'images/11.jpg',
            ),
            //Divider(color: Colors.black),
            ArticleCard(
              text1: 'philosophy',
              text2: 'The power of doing Nothing',
              text3: 'Mister Ayodele',
              text4: 'And the man thought to be wrong said...',
              textL1: '2 days ago',
              textL2: '5 min read',
              image: 'images/11.jpg',
            ),
            // Divider(color: Colors.black),
            ArticleCard(
              text1: 'philosophy',
              text2: 'The power of doing Nothing',
              text3: 'Mister Ayodele',
              text4: 'And the man thought to be wrong said...',
              textL1: '2 days ago',
              textL2: '5 min read',
              image: 'images/11.jpg',
            ),
            // Divider(color: Colors.black),
            ArticleCard(
              text1: 'philosophy',
              text2: 'The power of doing Nothing',
              text3: 'Mister Ayodele',
              text4: 'And the man thought to be wrong said...',
              textL1: '2 days ago',
              textL2: '5 min read',
              image: 'images/11.jpg',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white30,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipOval(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/bg1.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Text('Nerferipitou'),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Audio',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Reading List',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Interests',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Become a member',
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'New story',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Stats',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Stories',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/bg1.jpg'),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, ArticlesSettingsScreen.id);
                      //TODO: fix this route to the correct one
                    },
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, ArticlesHelpScreen.id);
                      //TODO: fix this route to the correct one
                    },
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
