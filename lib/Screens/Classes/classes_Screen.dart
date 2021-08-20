import 'package:academiaprototype/Screens/class_wigdet.dart';
import 'package:academiaprototype/constants.dart';
//import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

//Todo: use tags to arrange classes
//Todo: according to selected classes instead of level

class ClassesScreen extends StatefulWidget {
  static String id = 'classes_Screen';

  @override
  _ClassesScreenState createState() => _ClassesScreenState();
}

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

  List<Widget> classWidgets = [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            text: 'Topic:',
          ),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        Text(
          'The gear system',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ],
    ),
  ];

//  void messagesStream() async {
//    await for (var snapshot in _dB.collection('messages').snapshots()) {
//      for (var message in snapshot.docs) {
//        print(message.data);
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //if(AuthService().){}

    const String title = 'Classes';
    const String courseTitle = 'Mee 301 • Mechanics of machines 2';
    const String courseLecturer = 'Dr Ojo';
    const String courseDetails = 'Mon 16, 8-10';

    return Scaffold(
      //backgroundColor: Colors.grey.shade200,
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        //title: Text('Classes'),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        // centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
        elevation: 5,
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 40,
                ),
              ),
              Container(
                height: size.height * 0.005,
                width: size.width * 0.045,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
              ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        child: Container(
                          constraints: BoxConstraints(
                            maxHeight: size.shortestSide * 0.13,
                            maxWidth: size.shortestSide * 0.1,
                          ),
                          // height: size.shortestSide * 0.13,
                          // width: size.shortestSide * 0.1,
                          color: kPrimaryColor.shade100,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.subject,
                                  color: kPrimaryColor,
                                  size: 25,
                                ),
                                onPressed: () {},
                              ),
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
                height: size.height * 0.5,
                width: size.width,
                decoration: BoxDecoration(
                  //color: Colors.white,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //classWidgets,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Topic:',
                            ),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            'The gear system',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 4, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClassWigdet(
                        size: size,
                        text: 'Previous Classes',
                      ),
                      ClassWigdet(
                        size: size,
                        text: 'Up Coming Classes',
                      ),
                      ClassWigdet(
                        size: size,
                        text: 'List of Classes',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
    );
  }
}

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

class ClassWidget extends StatefulWidget {
  //const ClassWidget({Key? key}) : super(key: key);

  @override
  _ClassWidgetState createState() => _ClassWidgetState();
}

class _ClassWidgetState extends State<ClassWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      children: messageWidgets,
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble({this.text, this.sender, this.isMe});

  final String text;
  final String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return isMe
        ? Padding(
            padding: const EdgeInsets.all(10.0),
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
            padding: const EdgeInsets.all(10.0),
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