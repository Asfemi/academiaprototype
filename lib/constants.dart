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

enum DialogAction {
  cancel,
  discard,
  disagree,
  agree,
}
