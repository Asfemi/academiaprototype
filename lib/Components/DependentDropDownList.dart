import 'package:academiaprototype/Components/data.dart';
import 'package:academiaprototype/constants.dart';
import 'package:flutter/material.dart';

class DependentDropDown extends StatefulWidget {
  @override
  _DependentDropDownState createState() => _DependentDropDownState();
}

class _DependentDropDownState extends State<DependentDropDown> {
  String _faculty = "Choose a faculty";
  String _department = "Choose a dapartment";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 58.0,
            right: 58.0,
          ),
          child: Column(
            children: [
              DropdownButtonFormField(
                value: "Choose a faculty",
                items: [
                  for (int i = 0; i < data.length; i++)
                    DropdownMenuItem<String>(
                      value: data.keys.elementAt(i),
                      child: Text(data.keys.elementAt(i)),
                    )
                ],
                onTap: () {
                  setState(() {});
                },
                onChanged: (String value) {
                  // print(value);
                  _faculty = value;
                  setState(() {
                    _faculty = value;
                  });
                },

                //     data.map((e) {
                //   return DropdownMenuItem(
                //     child: Text(e.keys.toString()),
                //   );
                // }).toList()
              ),
              SizedBox(
                height: 40,
              ),
              _faculty == "Choose a faculty"
                  ? Container(
                      child: Text("Please choose a department"),
                    )
                  : DropdownButtonFormField(
                      value: data[_faculty].first,
                      items: [
                        for (int i = 0; i < data[_faculty].length; i++)
                          DropdownMenuItem<String>(
                            value: data[_faculty][i],
                            child: Text(
                              data[_faculty][i],
                            ),
                          )
                      ],
                      onChanged: (String value) {
                        // print(value);
                        setState(() {
                          _department = value;
                        });
                      },
                    ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                  color: kPrimaryColor,
                  onPressed: () async {
//                    await DataBaseServices(uid: _userId)
//                        .updateFaculty(_faculty)
//                        .whenComplete(
//                          () => DataBaseServices(uid: _userId)
//                              .updateDepartment(_department),
//                        );
                  },
                  child: Text(
                    "Submit answer",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
