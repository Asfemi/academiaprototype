import 'package:academiaprototype/Components/general_row.dart';
import 'package:academiaprototype/Screens/General/GenGallery.dart';
import 'package:academiaprototype/Screens/General/MapsScreen.dart';
import 'package:academiaprototype/Screens/General/Shop/Business.dart';
import 'package:academiaprototype/Screens/General/TimeTable.dart';
import 'package:academiaprototype/Screens/General/chapel_Screen.dart';
import 'package:academiaprototype/Screens/General/hostel_Screen.dart';
import 'package:academiaprototype/Screens/General/table_container.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class GeneralScreen extends StatefulWidget {
  static String id = 'general_Screen';

  @override
  _GeneralScreenState createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle = theme.textTheme.subtitle1
        .copyWith(color: theme.textTheme.caption.color);

    return Scaffold(
      appBar: AppBar(
        title: Text('General'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Todo: set up proper general image for general page
            Hero(
              tag: '5',
//              child: ImageSlider(
//                heightt: 0.4,
//                imagePath: 'Mix',
//                imageList: [
//                  '1.PNG',
//                  '2.PNG',
//                  '3.PNG',
//                  '4.PNG',
//                  '5.PNG',
//                  '6.PNG',
//                  '7.PNG',
//                  '8.PNG',
//                  '9.PNG',
//                  '10.PNG',
//                  '11.PNG',
//                  '12.PNG',
//                  '13.PNG',
//                  '14.PNG',
//                  '15.PNG',
//                  '16.PNG',
//                  '17.PNG',
//                  '18.PNG',
//                  '19.PNG',
//                  '20.PNG',
//                  '21.PNG',
//                  '22.PNG',
//                  '23.PNG',
//                  '24.PNG',
//                  '25.PNG',
//                ],
//              ),
            ),
            GeneralRow(
              icon1: Icons.subscriptions,
              text1: 'Chapel',
              ontap1: () {
                Navigator.pushNamed(context, ChapelScreen.id);
              },
              icon2: Icons.library_books,
              text2: 'Hostel',
              ontap2: () {
                Navigator.pushNamed(context, HostelScreen.id);
              },
              icon3: Icons.people,
              text3: 'Cafeteria',
              ontap3: () {
                print('cafeteria botton is working');
                showMainDialog<DialogAction>(
                    context: context,
                    child: AlertDialog(
                        title: Row(
                          children: [
                            const Text('Time Table'),
                            FlatButton(
                                child: const Icon(Icons.expand),
                                onPressed: () {
                                  Navigator.pushNamed(context, TimeTable.id);
                                })
                          ],
                        ),
                        content: Table(
                          defaultColumnWidth: FlexColumnWidth(2.3),
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.bottom,
                          border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('day'),
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Afternoon:',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Evening:',
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Mon',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.red.shade400,
                                  text: 'swallow',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.blue.shade200,
                                  text: 'rice',
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Tue',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.pink.shade200,
                                  text: 'yam ',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.deepOrange.shade300,
                                  text: 'spag/moi moi',
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Wed',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.green.shade300,
                                  text: 'beans',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.red.shade300,
                                  text: 'swallow',
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Thur',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.indigo.shade300,
                                  text: 'rice',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.deepOrange.shade300,
                                  text: 'spagetti',
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Fri',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.green.shade300,
                                  text: 'beans',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.deepOrange.shade300,
                                  text: 'spagetti',
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Sat',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.amber.shade300,
                                  text: 'rice',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.red.shade300,
                                  text: 'swallow',
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableContainer(
                                  size: size,
                                  color: Colors.white,
                                  text: 'Sun',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.blue.shade300,
                                  text: 'rice',
                                ),
                                TableContainer(
                                  size: size,
                                  color: Colors.deepOrange.shade300,
                                  text: 'spag/moi moi',
                                ),
                              ],
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          FlatButton(
                              child: const Text('Okay'),
                              onPressed: () {
                                Navigator.pop(context, DialogAction.disagree);
                              }),
                        ]));
                //TODO: make a cateria widget to display cafe contacts
              },
            ),
            GeneralRow(
              icon1: Icons.build,
              text1: 'Bussiness',
              ontap1: () {
                Navigator.pushNamed(context, BusinessScreen.id);
                //TODO: add the shop page
              },
              icon2: Icons.book,
              text2: 'Gallery',
              ontap2: () {
                Navigator.pushNamed(context, GeneralGallery.id);
                //TODO: add the general school gallery
              },
              icon3: Icons.menu,
              text3: 'Maps',
              ontap3: () {
                Navigator.pushNamed(context, MapsScreen.id);
                //TODO: add maps and directions to every location in sch
                //TODO: use google api
              },
            ),
            GeneralRow(
              text1: 'Medicals',
              icon1: Icons.brightness_medium,
              ontap1: () {
                showMainDialog<DialogAction>(
                    context: context,
                    //Set up proper page with tips and things to do incase of an emergency
                    child: AlertDialog(
                        title: const Text(
                          'Medicals',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 23,
                          ),
                        ),
                        content: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '#Ambulance',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text('08124232012')),
                            //TODO: give a dial pad option for the numbers
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text('08155907801')),
                            SizedBox(height: 30),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '*Emergencies',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: size.height * 0.5,
                                width: size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 10,
                                      color: kPrimaryColor.withOpacity(0.23),
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                      Text(
                                        '',
                                        style: dialogTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          FlatButton(
                              child: const Text('Okay'),
                              onPressed: () {
                                Navigator.pop(context, DialogAction.disagree);
                              }),
                          /*  FlatButton(
                                            child: const Text('AGREE'),
                                            onPressed: () {
                                              Navigator.pop(context,
                                                  DialogDemoAction.agree);
                                            })*/
                        ]));
              },
              text2: 'Reviews',
              icon2: Icons.title,
              ontap2: () {},
              text3: 'Security',
              icon3: Icons.picture_in_picture,
              ontap3: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// 08124232012
// 08155907801 au ambulance

void showMainDialog<T>({BuildContext context, Widget child}) {
  showDialog<T>(
    context: context,
    builder: (BuildContext context) => child,
  ).then<void>((T value) {
    // The value passed to Navigator.pop() or null.
    if (value != null) {
      /*_scaffoldKey.currentState.showSnackBar(SnackBar(
            content: Text('You selected: $value')
        ));*/
    }
  });
}
