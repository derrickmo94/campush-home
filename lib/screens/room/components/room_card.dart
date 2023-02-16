import 'package:campass_home/models/room.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

import 'room_card_body.dart';

Widget roomCardBuilder(BuildContext context, {required Room room}) {
  return Column(
    children: [
      Card(
        elevation: kDefaultSpacing * 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            kDefaultSpacing * 2,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  //width: screenWidth(context, reducedBy: 16.0),
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 4,
                  decoration: BoxDecoration(
                    color: room.roomSpace == room.bookedSpace
                        ? Colors.red
                        : kDefaultPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(kDefaultSpacing * 2),
              child: roomCardBodyBuilder(context, room: room),
            ),
          ],
        ),
      ),
      SizedBox(
        height: kDefaultSpacing * 2,
      ),
    ],
  );
}
