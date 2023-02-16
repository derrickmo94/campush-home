import 'package:flutter/material.dart';

enum Settings {
  profile,
  settings,
  logout,
  notfications,
}

///Returns a enumrated value of academic institution study period
///terminologies e,g semester or term
enum StudyPeriod { semester, term }

///Returns a enumrated value defining payment methods
//enum PaymentMethod { mobileMoney, creditCard }

///A constant default spacing of 4.0
const kDefaultSpacing = 4.0;

///Defines the defaul background color
const kDefaultBackgroundColor = Color.fromRGBO(237, 242, 248, 1);

///Defines a primary default color
const kDefaultPrimaryColor = Color.fromRGBO(20, 48, 76, 1);

Color defaultPrimaryColor({double opacity = 1}) {
  return Color.fromRGBO(20, 48, 76, opacity);
}

/// Returns a SizedBox widget with the spacified [space] argument as its height
Widget vLineSpace({double space = 10.0}) {
  return SizedBox(height: space);
}

/// Returns a SizedBox widget with the spacified [space] argument as its width
Widget hLineSpace({double space = 10.0}) {
  return SizedBox(width: space);
}

///Returns a padding
EdgeInsets pagePadding({
  double top = kDefaultSpacing * 3,
  double bottom = kDefaultSpacing * 15,
  double left = kDefaultSpacing * 2,
  double right = kDefaultSpacing * 2,
}) {
  return EdgeInsets.only(
    top: top,
    bottom: bottom,
    left: left,
    right: right,
  );
}
