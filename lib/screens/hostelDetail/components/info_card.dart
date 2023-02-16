import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget infoCardBuilder(BuildContext context, {Hostel? hostelData}) {
  return Card(
    elevation: kDefaultSpacing,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Container(
      padding: const EdgeInsets.all(kDefaultSpacing + 4),
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${hostelData!.rooms.toString()} Rooms"),
            Text(hostelData.type),
            Text(hostelData.structureType),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.location_pin,
                  size: 30.0,
                ),
                Text(
                  "56 min walking distance",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
