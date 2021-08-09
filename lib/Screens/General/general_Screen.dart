import 'package:academiaprototype/Components/general_row.dart';
import 'package:academiaprototype/Screens/General/GenGallery.dart';
import 'package:academiaprototype/Screens/General/MapsScreen.dart';
import 'package:academiaprototype/Screens/General/Shop/Business.dart';
import 'package:academiaprototype/Screens/General/TimeTable.dart';
import 'package:academiaprototype/Screens/General/__mini_cafe_time_tabe.dart';
import 'package:academiaprototype/Screens/General/chapel_Screen.dart';
import 'package:academiaprototype/Screens/General/hostel_Screen.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            //color: kPrimaryColor,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                //kPrimaryColor,
                kPrimaryColor.shade700,
                kPrimaryColor.shade700,
                kPrimaryColor.shade700,
                kPrimaryColor.shade700,
                kPrimaryColor.shade700,
                kPrimaryColor,
                kPrimaryColor.shade600,
                kPrimaryColor,
                kPrimaryColor.shade600,
                kPrimaryColor,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
            child: Center(
              child: SizedBox(
                height: size.height * 0.45,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GeneralRow(
                      icon1: LineIcons.church,
                      text1: 'Religion',
                      ontap1: () {
                        Navigator.pushNamed(context, ChapelScreen.id);
                      },
                      icon2: LineIcons.bed,
                      text2: 'Housing',
                      ontap2: () {
                        Navigator.pushNamed(context, HostelScreen.id);
                      },
                      icon3: LineIcons.beer,
                      text3: 'Food',
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
                                          Navigator.pushNamed(
                                              context, TimeTable.id);
                                        })
                                  ],
                                ),
                                content: MiniCafeTimeTable(size: size),
                                actions: <Widget>[
                                  FlatButton(
                                      child: const Text('Okay'),
                                      onPressed: () {
                                        Navigator.pop(
                                            context, DialogAction.disagree);
                                      }),
                                ]));
                        //TODO: make a cateria widget to display cafe contacts
                      },
                    ),
                    GeneralRow(
                      icon1: LineIcons.businessTime,
                      text1: 'Bussiness',
                      ontap1: () {
                        Navigator.pushNamed(context, BusinessScreen.id);
                        //TODO: add the shop page
                      },
                      icon2: LineIcons.image,
                      text2: 'Gallery',
                      ontap2: () {
                        Navigator.pushNamed(context, GeneralGallery.id);
                        //TODO: add the general school gallery
                      },
                      icon3: LineIcons.map,
                      text3: 'Maps',
                      ontap3: () {
                        Navigator.pushNamed(context, MapsScreen.id);
                        //TODO: add maps and directions to every location in sch
                        //TODO: use google api
                      },
                    ),
                    GeneralRow(
                      text1: 'Medicals',
                      icon1: LineIcons.firstAid,
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
                                        width: size.width * 0.9,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 5),
                                              blurRadius: 10,
                                              color: kPrimaryColor
                                                  .withOpacity(0.23),
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
                                        Navigator.pop(
                                            context, DialogAction.disagree);
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
                      icon2: LineIcons.check,
                      ontap2: () {},
                      text3: 'Security',
                      icon3: LineIcons.userLock,
                      ontap3: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
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

// Todo: set up proper general image for general page
//             Hero(
//               tag: '5',
// //              child: ImageSlider(
// //                heightt: 0.4,
// //                imagePath: 'Mix',
// //                imageList: [
// //                  '1.PNG',
// //                  '2.PNG',
// //                  '3.PNG',
// //                  '4.PNG',
// //                  '5.PNG',
// //                  '6.PNG',
// //                  '7.PNG',
// //                  '8.PNG',
// //                  '9.PNG',
// //                  '10.PNG',
// //                  '11.PNG',
// //                  '12.PNG',
// //                  '13.PNG',
// //                  '14.PNG',
// //                  '15.PNG',
// //                  '16.PNG',
// //                  '17.PNG',
// //                  '18.PNG',
// //                  '19.PNG',
// //                  '20.PNG',
// //                  '21.PNG',
// //                  '22.PNG',
// //                  '23.PNG',
// //                  '24.PNG',
// //                  '25.PNG',
// //                ],
// //              ),
//             ),
