import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget hostelHeaderBuilder(
  BuildContext context, {
  required String title,
  required void Function() onPress,
}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
        ),
        TextButton(
          onPressed: onPress,
          child: Text(
            "View all",
            style: TextStyle(
              color: kDefaultPrimaryColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    ),
  );
}
