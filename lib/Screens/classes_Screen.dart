import 'package:academiaprototype/constants.dart';
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

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('Classes'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: Container(
                width: size.width,
                height: size.height * 0.08,
                color: Colors.white,
                margin: const EdgeInsets.all(8.0),
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
                            Text(
                              'Mee 301 • Mechanics of machines 2',
                              style:
                                  TextStyle(fontSize: 18, color: kPrimaryColor),
                            ),
                            Text(
                              'Mee 301 • Mechanics of machines 2',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10, height: 10),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {},
                        child: ClipOval(
                          child: Container(
                            color: Colors.blue.shade50,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.subject,
                                color: kPrimaryColor,
                                size: 33,
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
            ),
            Expanded(
              flex: 6,
              child: Container(
                height: size.height * 0.5,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(26),
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
                      Text(
                        'Topic:',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: kPrimaryColor,
                              style: BorderStyle.solid,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                color: kPrimaryColor.withOpacity(0.23),
                              ),
                            ],
                          ),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'Previous Classes',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: kPrimaryColor,
                              style: BorderStyle.solid,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                color: kPrimaryColor.withOpacity(0.23),
                              ),
                            ],
                          ),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'Up coming Classes',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: kPrimaryColor,
                              style: BorderStyle.solid,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                color: kPrimaryColor.withOpacity(0.23),
                              ),
                            ],
                          ),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'List of Classes',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: kPrimaryColor,
                              style: BorderStyle.solid,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                color: kPrimaryColor.withOpacity(0.23),
                              ),
                            ],
                          ),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'List of Classes',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: kPrimaryColor,
                elevation: 5,
                onPressed: () {},
              ),
            )
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
          ],
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
