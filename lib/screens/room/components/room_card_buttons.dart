import 'package:campass_home/models/room.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget roomCardButtonsBuilder(
  BuildContext context, {
  required Room room,
  required void Function() onPressed,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: kDefaultPrimaryColor,
            ),
            onPressed: () {},
          ),
          Text(
            "Like",
            style: TextStyle(
              color: kDefaultPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith((states) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultSpacing * 4),
            );
          }),
          side: MaterialStateProperty.resolveWith(
            (states) {
              return BorderSide(
                color: room.roomSpace == room.bookedSpace
                    ? Colors.red
                    : kDefaultPrimaryColor,
              );
            },
          ),
        ),
        child: Container(
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              "Book",
              style: TextStyle(fontSize: 20.0, color: kDefaultPrimaryColor),
            ),
          ),
        ),
        onPressed: room.roomSpace == room.bookedSpace ? null : onPressed,
      )
    ],
  );
}
