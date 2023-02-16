import 'package:flutter/material.dart';

Widget userAccountTileBuilder(
  BuildContext context, {
  required IconData leading,
  required String label,
  IconData? trailing,
  required onTap,
}) {
  var trailingIcon;
  if (trailing == null) {
    trailingIcon = null;
  } else {
    trailingIcon = Icon(trailing);
  }
  return Container(
    child: Column(
      children: [
        ListTile(
          leading: Icon(leading),
          title: Text(label),
          trailing: trailingIcon,
          onTap: onTap,
        ),
        Divider()
      ],
    ),
  );
}
