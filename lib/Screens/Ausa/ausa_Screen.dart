import 'package:academiaprototype/Screens/Ausa/students_life_card.dart';
import 'package:academiaprototype/constants.dart';
import 'package:academiaprototype/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AusaScreen extends StatefulWidget {
  static String id = 'ausa_Screen';

  @override
  _AusaScreenState createState() => _AusaScreenState();
}

class _AusaScreenState extends State<AusaScreen> {
  //TODO: add online election part
//  TODO: add current and past excecutives page
//  TODO: add messages to screen
//  TODO: add hand book
//  TODO: add works of different administration // we can merge the works and images of the administration together
//  TODO: add the 'brought to you by ausa' post atop of the page just below the image
//  i should probably make the image here a sliver i guess
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  StudentsLifeCard(
                    size: size,
                    image: 'assets/aziz-acharki-U3C79SeHa7k-unsplash.jpg',
                    day: '29',
                    dayText: 'Thursday!',
                    month: 'July',
                    year: '2021',
                    text: 'Amazing',
                  ),
                  StudentsLifeCard(
                    size: size,
                    image: 'assets/tomas-jasovsky-d5SZqLkpIrY-unsplash.jpg',
                    day: '30',
                    dayText: 'Friday!',
                    month: 'July',
                    year: '2021',
                    text: 'Splendid',
                  ),
                  StudentsLifeCard(
                    size: size,
                    image:
                        'assets/konstantin-evdokimov-JP0qiWQzjrg-unsplash.jpg',
                    day: '31',
                    dayText: 'Saturday!',
                    month: 'July',
                    year: '2021',
                    text: 'Wonderful',
                  ),
                  StudentsLifeCard(
                    size: size,
                    image: 'assets/priscilla-du-preez-x_jAYPjskYI-unsplash.jpg',
                    day: '1',
                    dayText: 'Sunday!',
                    month: 'August',
                    year: '2021',
                    text: 'Awesome',
                  ),
                  StudentsLifeCard(
                    size: size,
                    image: 'assets/umberto-GQ4VBpgPzik-unsplash.jpg',
                    day: '2',
                    dayText: 'Monday!',
                    month: 'August',
                    year: '2021',
                    text: 'incredible',
                  ),
                  StudentsLifeCard(
                    size: size,
                    image: 'assets/braden-collum-9HI8UJMSdZA-unsplash.jpg',
                    day: '3',
                    dayText: 'Tuesday!',
                    month: 'August',
                    year: '2021',
                    text: 'Fantastic',
                  ),
                  StudentsLifeCard(
                    size: size,
                    image: 'assets/june-heredia--9LHFWv5l-M-unsplash.jpg',
                    day: '4',
                    dayText: 'Wednesday!',
                    month: 'August',
                    year: '2021',
                    text: 'Magnificent',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: kPrimaryColor),
              onPressed: () {
                Navigator.pushNamed(context, SwipeNavigation.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// body: Column(
//   children: <Widget>[
//     // Padding(
//     //   padding: const EdgeInsets.all(5.0),
//     //   child: Container(
//     //     width: size.width,
//     //     height: size.height * 0.1,
//     //     decoration: BoxDecoration(
//     //       color: Colors.white,
//     //       borderRadius: BorderRadius.all(
//     //         Radius.circular(26),
//     //       ),
//     //       border: Border.all(
//     //         color: kPrimaryColor,
//     //         style: BorderStyle.solid,
//     //       ),
//     //       boxShadow: [
//     //         BoxShadow(
//     //           offset: Offset(0, 5),
//     //           blurRadius: 10,
//     //           color: kPrimaryColor.withOpacity(0.23),
//     //         ),
//     //       ],
//     //     ),
//     //     child: Padding(
//     //       padding: const EdgeInsets.all(8.0),
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //         children: [
//     //           Column(
//     //             crossAxisAlignment: CrossAxisAlignment.start,
//     //             children: [
//     //               Text(
//     //                 'messages',
//     //                 style: TextStyle(
//     //                   fontSize: 20,
//     //                   color: kPrimaryColor,
//     //                   fontWeight: FontWeight.bold,
//     //                 ),
//     //               ),
//     //               Text(
//     //                 'Message from the Student Senate',
//     //                 style: TextStyle(
//     //                   fontSize: 13,
//     //                   color: Colors.black,
//     //                 ),
//     //               ),
//     //             ],
//     //           ),
//     //           Icon(
//     //             Icons.notification_important,
//     //             color: kPrimaryColor,
//     //             size: 30,
//     //           )
//     //         ],
//     //       ),
//     //     ),
//     //   ),
//     // ),
//     // Padding(
//     //   padding: const EdgeInsets.all(5.0),
//     //   child: Container(
//     //     width: size.width,
//     //     height: size.height * 0.1,
//     //     decoration: BoxDecoration(
//     //       color: Colors.white,
//     //       borderRadius: BorderRadius.all(
//     //         Radius.circular(26),
//     //       ),
//     //       border: Border.all(
//     //         color: kPrimaryColor,
//     //         style: BorderStyle.solid,
//     //       ),
//     //       boxShadow: [
//     //         BoxShadow(
//     //           offset: Offset(0, 5),
//     //           blurRadius: 10,
//     //           color: kPrimaryColor.withOpacity(0.23),
//     //         ),
//     //       ],
//     //     ),
//     //     child: Padding(
//     //       padding: const EdgeInsets.all(8.0),
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //         children: [
//     //           Column(
//     //             crossAxisAlignment: CrossAxisAlignment.start,
//     //             children: [
//     //               Text(
//     //                 'Adeleke University Hand Book',
//     //                 style: TextStyle(
//     //                   fontSize: 20,
//     //                   color: kPrimaryColor,
//     //                   fontWeight: FontWeight.bold,
//     //                 ),
//     //               ),
//     //               Text(
//     //                 'The rules and regulations, our dos and donts',
//     //                 style: TextStyle(
//     //                   fontSize: 13,
//     //                   color: Colors.black,
//     //                 ),
//     //               ),
//     //             ],
//     //           ),
//     //           Icon(
//     //             Icons.book,
//     //             color: kPrimaryColor,
//     //             size: 30,
//     //           )
//     //         ],
//     //       ),
//     //     ),
//     //   ),
//     // ),
//     // Padding(
//     //   padding: const EdgeInsets.all(5.0),
//     //   child: Container(
//     //     width: size.width,
//     //     height: size.height * 0.1,
//     //     decoration: BoxDecoration(
//     //       color: Colors.white,
//     //       borderRadius: BorderRadius.all(
//     //         Radius.circular(26),
//     //       ),
//     //       border: Border.all(
//     //         color: kPrimaryColor,
//     //         style: BorderStyle.solid,
//     //       ),
//     //       boxShadow: [
//     //         BoxShadow(
//     //           offset: Offset(0, 5),
//     //           blurRadius: 10,
//     //           color: kPrimaryColor.withOpacity(0.23),
//     //         ),
//     //       ],
//     //     ),
//     //     child: Padding(
//     //       padding: const EdgeInsets.all(8.0),
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //         children: [
//     //           Column(
//     //             crossAxisAlignment: CrossAxisAlignment.start,
//     //             children: [
//     //               Text(
//     //                 'Administrations',
//     //                 style: TextStyle(
//     //                   fontSize: 20,
//     //                   color: kPrimaryColor,
//     //                   fontWeight: FontWeight.bold,
//     //                 ),
//     //               ),
//     //               Text(
//     //                 'Meet this years Excecutives',
//     //                 style: TextStyle(
//     //                   fontSize: 13,
//     //                   color: Colors.black,
//     //                 ),
//     //               ),
//     //             ],
//     //           ),
//     //           Icon(
//     //             Icons.image,
//     //             color: kPrimaryColor,
//     //             size: 30,
//     //           )
//     //         ],
//     //       ),
//     //     ),
//     //   ),
//     // ),
//     // Padding(
//     //   padding: const EdgeInsets.all(5.0),
//     //   child: Container(
//     //     width: size.width,
//     //     height: size.height * 0.1,
//     //     decoration: BoxDecoration(
//     //       color: Colors.white,
//     //       borderRadius: BorderRadius.all(
//     //         Radius.circular(26),
//     //       ),
//     //       border: Border.all(
//     //         color: kPrimaryColor,
//     //         style: BorderStyle.solid,
//     //       ),
//     //       boxShadow: [
//     //         BoxShadow(
//     //           offset: Offset(0, 5),
//     //           blurRadius: 10,
//     //           color: kPrimaryColor.withOpacity(0.23),
//     //         ),
//     //       ],
//     //     ),
//     //     child: Padding(
//     //       padding: const EdgeInsets.all(8.0),
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //         children: [
//     //           Column(
//     //             crossAxisAlignment: CrossAxisAlignment.start,
//     //             children: [
//     //               Text(
//     //                 'Elections!!!',
//     //                 style: TextStyle(
//     //                   fontSize: 20,
//     //                   color: kPrimaryColor,
//     //                   fontWeight: FontWeight.bold,
//     //                 ),
//     //               ),
//     //               Text(
//     //                 'Be purposeful, be political active',
//     //                 style: TextStyle(
//     //                   fontSize: 13,
//     //                   color: Colors.black,
//     //                 ),
//     //               ),
//     //             ],
//     //           ),
//     //           Icon(
//     //             Icons.people,
//     //             color: kPrimaryColor,
//     //             size: 30,
//     //           )
//     //         ],
//     //       ),
//     //     ),
//     //   ),
//     // ),
//   ],
// ),
