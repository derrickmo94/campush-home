import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

SliverStickyHeader instituteStickyHeader(
  BuildContext context, {
  required institute,
}) {
  return SliverStickyHeader(
    sticky: false,
    header: Container(
      height: 80,
      child: Stack(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kDefaultPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your institution",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "$institute",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: kDefaultBackgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      color: kDefaultPrimaryColor,
                      offset: Offset(0.0, 0),
                      blurRadius: 40)
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
