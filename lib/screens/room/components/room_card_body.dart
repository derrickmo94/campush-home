import 'package:campass_home/models/room.dart';
import 'package:campass_home/screens/room/components/room_card_buttons.dart';
import 'package:campass_home/screens/room/components/room_space_indicator.dart';
import 'package:campass_home/utils/constants/routes.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget roomCardBodyBuilder(BuildContext context, {required Room room}) {
  return DefaultTextStyle(
    style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              "Room No ${room.roomNumber}",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            Spacer(),
            Text(
              "${room.roomType}",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(height: kDefaultSpacing * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...roomSpaceIndicatorBuilder(
                totalSpaces: room.roomSpace, bookedSpaces: room.bookedSpace),
            SizedBox(width: kDefaultSpacing * 2),
            room.roomSpace - room.bookedSpace == 1
                ? Text("${room.roomSpace - room.bookedSpace} space left")
                : room.roomSpace - room.bookedSpace > 1 &&
                        room.roomSpace - room.bookedSpace != room.roomSpace
                    ? Text("${room.roomSpace - room.bookedSpace} spaces left")
                    : room.roomSpace == room.bookedSpace
                        ? Text("Fully occupied")
                        : Text("${room.roomSpace} spaces available"),
            Spacer(),
            Text("${room.roomFloor}")
          ],
        ),
        SizedBox(height: kDefaultSpacing * 2),
        Row(
          children: [
            Expanded(
              child: Text(
                "${room.roomGender}",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kDefaultPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Text("${room.roomLikes} likes"),
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "UGX ",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                TextSpan(
                  text: "${room.roomAmount}",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: kDefaultPrimaryColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
          ),
        ),
        roomCardButtonsBuilder(
          context,
          room: room,
          onPressed: () {
            Navigator.pushNamed(context, kBookingRoute, arguments: room.id);
          },
        ),
      ],
    ),
  );
}
