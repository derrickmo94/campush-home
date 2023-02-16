import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

PreferredSizeWidget defaultAppbarBuilder(
  BuildContext context, {
  Color background = kDefaultPrimaryColor,
  Widget? title,
  List<Widget>? actions,
}) {
  return AppBar(
    backgroundColor: background,
    title: title,
    actions: [...?actions],
    elevation: 0,
  );
}
