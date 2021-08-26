import 'package:flutter/material.dart';

const kPrimaryColor = Colors.blue;
const kPrimaryTextColor = Colors.black38;
const kBackGroundColor = Colors.white;

const kMinMinPadding = 2.0;
const kMinPadding = 4.0;
const kMaxMinPadding = 6.0;
const kMinMediumPadding = 8.0;
const kMaxMediumPadding = 10.0;
const kMinMaxPadding = 12.0;
const kMaxPadding = 14.0;
const kMaxMaxPadding = 16.0;

const kHeadingText1 = TextStyle(
  color: kPrimaryTextColor,
  fontSize: 19,
  fontWeight: FontWeight.bold,
);

const kHeadingText2 = TextStyle(
  color: kPrimaryTextColor,
  fontSize: 12,
  fontWeight: FontWeight.bold,
);

const kHeadingText3 = TextStyle(
  color: kPrimaryTextColor,
  fontSize: 10,
  fontWeight: FontWeight.normal,
);

const kMessageTextFieldDecoration = InputDecoration(
  fillColor: kPrimaryColor,
  hintText: 'Enter a comment...',
  hintStyle: TextStyle(fontSize: 20, color: kPrimaryColor),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kTextFieldDesign = InputDecoration(
  fillColor: Colors.white,
  hintText: 'Enter your email',
  hintStyle: TextStyle(fontSize: 20, color: Colors.white70),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: kPrimaryColor, width: 2.0),
  ),
);

const kSendButtonTextStyle = TextStyle(
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

enum DialogAction {
  cancel,
  discard,
  disagree,
  agree,
}
