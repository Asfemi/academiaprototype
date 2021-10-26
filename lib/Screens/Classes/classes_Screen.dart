import 'package:academiaprototype/Screens/Classes/More.dart';
import 'package:academiaprototype/Screens/Classes/class_search_row_text.dart';
import 'package:academiaprototype/Screens/Classes/notes.dart';
import 'package:academiaprototype/Screens/Classes/pastQuestions.dart';
//academiaprototype/constants.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'classModel.dart';

//Todo: use tags to arrange classes
//Todo: according to selected classes instead of level

class ClassesScreen extends StatefulWidget {
  static String id = 'classes_Screen';

  @override
  _ClassesScreenState createState() => _ClassesScreenState();
}

bool bActive = false;

class _ClassesScreenState extends State<ClassesScreen>
    with SingleTickerProviderStateMixin {
  final Duration duration = Duration(milliseconds: 450);
  AnimationController _controller;
  final messageTextController = TextEditingController();
  Animation<double> _iconAnimation;

  String messageText;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: duration);
    _iconAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //if(AuthService().){}

    const String title = 'Classes';
    const String courseTitle = 'Mee 301 • Mechanics of machines 2';
    const String courseLecturer = 'Dr Ojo';
    const String courseDetails = 'Mon 16, 8-10';

    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.grey.shade200,
        backgroundColor: Colors.grey.shade100,
        // appBar: AppBar(
        //   //title: Text('Classes'),
        //   elevation: 0,
        //   backgroundColor: Colors.grey.shade100,
        //   // centerTitle: true,
        // ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(
        //     Icons.add,
        //     color: Colors.white,
        //   ),
        //   backgroundColor: kPrimaryColor,
        //   elevation: 5,
        //   onPressed: () {},
        // ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Text(
                  //   '$title',
                  //   style: TextStyle(
                  //     color: kPrimaryColor,
                  //     fontSize: 40,
                  //   ),
                  // ),
                  // Container(
                  //   height: size.height * 0.005,
                  //   width: size.width * 0.045,
                  //   padding: EdgeInsets.only(left: 10),
                  //   decoration: BoxDecoration(
                  //     color: Colors.black54,
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(5.0),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: size.shortestSide,
                    height: size.height * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
//                  border: Border.all(
//                    color: kPrimaryColor,
//                    style: BorderStyle.solid,
//                  ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          color: kPrimaryColor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(width: 10, height: 10),
                        Expanded(
                          flex: 10,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Title:',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black54),
                                    ),
                                    Text(
                                      '$courseTitle',
                                      style: TextStyle(
                                          fontSize: 11, color: kPrimaryColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Lecturer:',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black54),
                                    ),
                                    Text(
                                      '$courseLecturer',
                                      style: TextStyle(
                                          fontSize: 10, color: kPrimaryColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Date/time:',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black54),
                                    ),
                                    Text(
                                      '$courseDetails',
                                      style: TextStyle(
                                          fontSize: 10, color: kPrimaryColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10, height: 10),
                        Expanded(
                          flex: 2,
                          child: ClipOval(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.subject,
                                    color: kPrimaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      bActive = !bActive;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10, height: 10),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.77,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: kPrimaryColor,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ClassStream(),
                          SizedBox(height: 5),
                          Container(
                            height: size.height * 0.05,
                            //decoration: kMessageContainerDecoration,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    //textInputAction: TextInputAction.search,
                                    controller: messageTextController,
                                    maxLines: 1,
                                    onChanged: (value) {
                                      //Do something with the user input.
                                      messageText = value;
                                    },
                                    decoration: kMessageTextFieldDecoration,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Material(
                                  color: kPrimaryColor,
                                  shape: CircleBorder(),
                                  child: Center(
                                    child: IconButton(
                                      //set the send functionality to not work without a tag been set for the text input
                                      onPressed: () {
                                        //Implement send functionality.
                                        messageTextController.clear();
                                        // _dB.collection('messages').add({
                                        //   'text': messageText,
                                        //   'sender': loggedInUser.displayName,
                                        // });
                                        //TODO: remember to add this collection 'messages' to the database
                                      },
                                      icon: Icon(
                                        Icons.send,
                                        color: Colors.white,
                                      ),
                                      // child: Text(
                                      //   'Send',
                                      //   style: kSendButtonTextStyle,
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(0, 10, 4, 0),
                  //   child: SingleChildScrollView(
                  //     scrollDirection: Axis.horizontal,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         ClassWigdet(
                  //           size: size,
                  //           text: 'Previous Classes',
                  //         ),
                  //         ClassWigdet(
                  //           size: size,
                  //           text: 'Up Coming Classes',
                  //         ),
                  //         ClassWigdet(
                  //           size: size,
                  //           text: 'List of Classes',
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            BuildPositioned(
              icon: LineIcons.medicalNotes,
              route: () {
                Navigator.pushNamed(context, ClassNotes.id);
              },
              top: size.shortestSide * 0.4,
              right: size.shortestSide * 0.08,
            ),
            BuildPositioned(
              icon: LineIcons.question,
              route: () {
                Navigator.pushNamed(context, PastQuestions.id);
              },
              top: size.shortestSide * 0.5,
              right: size.shortestSide * 0.08,
            ),
            BuildPositioned(
              icon: Icons.more_horiz,
              route: () {
                Navigator.pushNamed(context, More.id);
              },
              top: size.shortestSide * 0.6,
              right: size.shortestSide * 0.08,
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'Classes!',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                ListTile(
                  title: Text('Add/Remove Classes'),
                  trailing: AnimatedIcon(
                    icon: AnimatedIcons.add_event,
                    color: Colors.black.withOpacity(0.7),
                    progress: _iconAnimation,
                  ),
                ),
                ListTile(
                  title: Text("Time table"),
                  trailing: AnimatedIcon(
                    icon: AnimatedIcons.view_list,
                    color: Colors.black.withOpacity(0.7),
                    progress: _iconAnimation,
                  ),
                ),
                ListTile(
                  title: Text('Tutourial'),
                  trailing: AnimatedIcon(
                    icon: AnimatedIcons.pause_play,
                    color: Colors.black.withOpacity(0.7),
                    progress: _iconAnimation,
                  ),
                ),
                ListTile(
                  title: Text('Previous Classes'),
                  trailing: AnimatedIcon(
                    icon: AnimatedIcons.pause_play,
                    color: Colors.black.withOpacity(0.7),
                    progress: _iconAnimation,
                  ),
                ),
                ListTile(
                  title: Text('Upcoming Classes'),
                  trailing: AnimatedIcon(
                    icon: AnimatedIcons.pause_play,
                    color: Colors.black.withOpacity(0.7),
                    progress: _iconAnimation,
                  ),
                ),
                ListTile(
                  title: Text('List of Classes'),
                  trailing: AnimatedIcon(
                    icon: AnimatedIcons.pause_play,
                    color: Colors.black.withOpacity(0.7),
                    progress: _iconAnimation,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: solve the range error

//            Expanded(
//              flex: 1,
//              child: Padding(
//                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: [
//                    Container(
//                      margin: EdgeInsets.all(3),
//                      width: size.width * 0.75,
//                      height: size.height * 0.05,
//                      child: TextField(
//                        controller: messageTextController,
//                        onChanged: (value) {},
//                        decoration: kTextFieldDesign.copyWith(
//                            hintText: 'Ask a question...',
//                            hintStyle: TextStyle(
//                              color: Colors.black,
//                            )),
//                      ),
//                    ),
//                    ClipOval(
//                      child: Container(
//                        color: kPrimaryColor,
//                        child: IconButton(
//                          icon: Icon(
//                            Icons.send,
//                            color: Colors.white,
//                          ),
//                          onPressed: () {
//                            messageTextController.clear();
//                          },
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),

class ClassStream extends StatelessWidget {
  //const ClassStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    List<ClassBubble> classWidgets = [];
    //sample of how it should be in the back end
    // final messages = snapshot.data.docs.reversed;
    //final currentUser = loggedInUser.displayName;
    final items = classData;
    int changable = 0;

    for (var item in items) {
      //topic
      final topicbool = items[changable].topicbool;
      final topic = items[changable].topic;
      //subTopic
      final subtopicbool = items[changable].subtopicbool;
      final subtopic = items[changable].subtopic;
      //search result
      final searchbool = items[changable].searchbool;
      final search = items[changable].search;
      final searchResultText1 = items[changable].searchResultText1;
      final searchResultText2 = items[changable].searchResultText2;
      final searchResultText3 = items[changable].searchResultText3;
      //comment
      final text = items[changable].text;
      final sender = items[changable].sender;
      final isMe = items[changable].isMe;

      final classesWidget = ClassBubble(
        topic: topic,
        topicbool: topicbool,
        subtopicbool: subtopicbool,
        subtopic: subtopic,
        searchbool: searchbool,
        search: search,
        searchResultText1: searchResultText1,
        searchResultText2: searchResultText2,
        searchResultText3: searchResultText3,
        text: text,
        sender: sender,
        isMe: isMe,
      );
      classWidgets.add(classesWidget);
      changable++;
    }

    return Expanded(
      child: ListView(
        reverse: false,
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        children: classWidgets,
        //itemCount: classData.length,
        //itemBuilder: (BuildContext context, int position) => ,
      ),
    );
  }
}

class ClassBubble extends StatelessWidget {
  ClassBubble({
    this.text,
    this.sender,
    this.isMe,
    this.searchbool,
    this.search,
    this.searchResultText3,
    this.searchResultText2,
    this.searchResultText1,
    this.topic,
    this.topicbool,
    this.subtopic,
    this.subtopicbool,
  });

  //topic
  final bool topicbool;
  final String topic;
  //subTopic
  final bool subtopicbool;
  final String subtopic;
  //search result
  final bool searchbool;
  final String search;
  final String searchResultText1;
  final String searchResultText2;
  final String searchResultText3;
  //comment
  final String text;
  final String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //TODO: ensure that topic, subtopic is always on the top of the class widget
    if (topicbool == true) {
      return Container(
        //padding: EdgeInsets.only(bottom: 4),
        margin: EdgeInsets.only(bottom: 4),
        height: size.height * 0.05,
        //width: 50,
        //color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Topic:',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              topic,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      );
    } else if (searchbool == true) {
      return Container(
        margin: EdgeInsets.only(bottom: 4),
        //height: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Search Result:',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                SizedBox(width: 10),
                Text(
                  '$search',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClassSearchRowText(
                      size: size,
                      no: '1:',
                      searchResultText: searchResultText1,
                    ),
                    ClassSearchRowText(
                      size: size,
                      no: '2:',
                      searchResultText: searchResultText2,
                    ),
                    ClassSearchRowText(
                      size: size,
                      no: '3:',
                      searchResultText: searchResultText3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else if (subtopicbool == true) {
      return Container(
        margin: EdgeInsets.only(bottom: 4),
        height: size.height * 0.03,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'SubTopic:',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtopic,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      );
    } else {
      return isMe
          ? Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$sender',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    color: kPrimaryColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Text(
                        '$text',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$sender',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Text(
                        '$text',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
    }
  }
}

class BuildPositioned extends StatelessWidget {
  const BuildPositioned(
      {this.width,
      this.height,
      this.bottom,
      this.left,
      this.right,
      this.top,
      this.icon,
      this.route});

  final double right;
  final double left;
  final double top;
  final double bottom;
  final double width;
  final double height;
  final IconData icon;
  final Function route;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      child: ClipOval(
        child: Container(
          height: bActive ? 30 : 0,
          width: 30,
          color: kPrimaryColor,
          child: Center(
            child: IconButton(
              icon: Icon(
                icon,
                size: 15,
                color: Colors.white,
              ),
              onPressed: route,
            ),
          ),
        ),
      ),
    );
  }
}
