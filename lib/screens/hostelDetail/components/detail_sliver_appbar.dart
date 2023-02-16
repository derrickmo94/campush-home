import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

SliverAppBar detailSliverAppBarBuilder(
  BuildContext context, {
  Hostel? hostelData,
}) {
  return SliverAppBar(
    backgroundColor: kDefaultPrimaryColor,
    leadingWidth: 25,
    pinned: true,
    floating: true,
    stretch: true,
    expandedHeight: 220.0,
    flexibleSpace: FlexibleSpaceBar(
      stretchModes: const <StretchMode>[
        StretchMode.zoomBackground,
        StretchMode.blurBackground,
        StretchMode.fadeTitle,
      ],
      centerTitle: true,
      titlePadding: EdgeInsets.symmetric(vertical: 23.0),
      title: Text(
        "${hostelData!.name}",
        overflow: TextOverflow.ellipsis,
      ),
      background: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: "${hostelData.name}",
            child: ExtendedImage.asset(
              hostelData.imageUrl,
              enableLoadState: true,
              fit: BoxFit.fill,
              //enableMemoryCache: true,
            ),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, 0.5),
                end: Alignment(0.0, 0.0),
                colors: <Color>[
                  Color(0x60000000),
                  Color(0x00000000),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RatingBar.builder(
              initialRating: 3,
              maxRating: 5,
              minRating: 1,
              itemCount: 5,
              allowHalfRating: true,
              itemSize: 21,
              unratedColor: Color.fromRGBO(247, 247, 247, 1),
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, __) {
                return Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              },
              onRatingUpdate: (rating) {
                print("The rating is $rating");
              },
            ),
          ),
        ],
      ),
    ),
  );
}
