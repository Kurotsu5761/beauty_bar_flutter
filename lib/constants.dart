import 'package:flutter/material.dart';

//Colors
const kDarkPink = Color(0xfff0aaa8);
const kPink = Color(0xfffee6e6);
const kBackgroundColor = Color(0xfffadad9);
const kDarkBlue = Color(0xff4f779d);
const kBlue = Color(0xffcadff5);

//Text Style
const kTitleStyle = TextStyle(
  color: kDarkBlue,
  fontSize: 18,
);
const kMainText = "IBM_Plex";

//BorderRadius
const kSelectedBorder = BorderRadius.only(
  topLeft: Radius.circular(20),
  bottomRight: Radius.circular(20),
);
const kNonSelectedBorder = BorderRadius.all(
  Radius.circular(20),
);

//BoxShadow
const kBoxShadow = [
  BoxShadow(
    blurRadius: 2,
    color: Color(0xddededed),
    offset: Offset(0, 3),
  )
];
