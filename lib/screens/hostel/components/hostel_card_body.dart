import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget hostelCardBodyBuilder(BuildContext context,
    {required Hostel hostelData}) {
  return Container(
    padding: EdgeInsets.all(kDefaultSpacing + 4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "${hostelData.name} Hostel",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Row(
          children: [
            Text(
              "${hostelData.rooms} Rooms",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Spacer(),
            Text("200 total spaces"),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${hostelData.type} (Male & Female)",
              softWrap: true,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
            ),
            Spacer(),
            RatingBarIndicator(
              itemSize: 20,
              rating: hostelData.rating,
              itemBuilder: (context, i) {
                return Icon(
                  Icons.stars_sharp,
                  color: Colors.orange,
                );
              },
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "${hostelData.structureType}",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.directions_walk_outlined,
                  color: kDefaultPrimaryColor,
                ),
                Text(
                  "26 mins from institute",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}
