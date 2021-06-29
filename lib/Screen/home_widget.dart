import 'package:flutter/material.dart';


// ignore: camel_case_types
class Home_Widget extends StatefulWidget {
  @override
  _Home_WidgetState createState() => _Home_WidgetState();
}
// ignore: camel_case_types
class _Home_WidgetState extends State<Home_Widget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
                      height: size.height * 0.3,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: size.height * 0.12,
                          width: size.width * 0.23,
                          decoration: BoxDecoration(
                        
                        color: Colors.blueGrey,
                        image: DecorationImage(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                        ),
                      ),
                    );
    
    }
}

