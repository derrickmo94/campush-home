import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'hostel_card_body.dart';

Widget hostelCardBuilder(
  BuildContext context, {
  required Hostel hostelData,
  required void Function() onTap,
}) {
  return Card(
    elevation: 6.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: InkWell(
      borderRadius: BorderRadius.circular(
        kDefaultSpacing * 3,
      ),
      splashColor: kDefaultBackgroundColor,
      focusColor: kDefaultBackgroundColor,
      child: Container(
        height: kDefaultSpacing * 75,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ExtendedImage(
                  image: AssetImage(hostelData.imageUrl),
                  width: double.infinity,
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.medium,
                  shape: BoxShape.rectangle,
                  handleLoadingProgress: true,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
              ),
            ),
            hostelCardBodyBuilder(context, hostelData: hostelData),
          ],
        ),
      ),
      onTap: onTap,
    ),
  );
}
