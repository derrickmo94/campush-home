import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget paymentHistoryCardBodyBuilder(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(kDefaultSpacing * 2),
    child: Row(
      //mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.monetization_on_sharp,
          color: kDefaultPrimaryColor,
        ),
        SizedBox(
          width: 4.0,
        ),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyText2!.copyWith(),
          child: Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Room 25",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(),
                    ),
                    Spacer(),
                    Text(
                      "25/12/2020",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: [
                    Text("Mobile money"),
                    Spacer(),
                    Text("UGX 400,000"),
                  ],
                ),
                SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: [
                    Text("Balance"),
                    Spacer(),
                    Text("UGX 300,000"),
                  ],
                ),
              ],
            ),
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: kDefaultPrimaryColor,
        ),
      ],
    ),
  );
}
