import 'package:flutter/material.dart';

List<Widget> roomSpaceIndicatorBuilder({
  required int totalSpaces,
  int bookedSpaces = 0,
}) {
  List<Widget> indicator = [];
  for (var i = 0; i < bookedSpaces; i++) {
    indicator.add(indicatorIcon(color: Colors.deepOrange));
  }
  for (var i = 1; i <= totalSpaces - bookedSpaces; i++) {
    indicator.add(indicatorIcon());
  }

  return indicator;
}

Icon indicatorIcon({Color color = Colors.green}) {
  return Icon(
    Icons.circle,
    color: color,
    size: 14.0,
  );
}
