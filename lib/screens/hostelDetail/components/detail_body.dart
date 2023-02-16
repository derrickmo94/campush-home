import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/utils/constants/routes.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'amenity_card.dart';
import 'description_card.dart';
import 'detail_sliver_appbar.dart';
import 'info_card.dart';
import 'persistent_button.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key? key,
    required this.hostelData,
  }) : super(key: key);

  final Hostel? hostelData;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        detailSliverAppBarBuilder(context, hostelData: hostelData),
        SliverStickyHeader(
          header: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultSpacing * 3,
            ),
            child: persistentButtonBuilder(
              context,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  kHostelRoomRoute,
                  arguments: hostelData!.id,
                );
              },
            ),
          ),
          sliver: SliverPadding(
            padding: pagePadding(),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  infoCardBuilder(
                    context,
                    hostelData: hostelData,
                  ),
                  amenityCardBuilder(
                    context,
                    amenities: hostelData!.amenities,
                  ), //Amenity layout builder
                  descriptionCardBuilder(
                    context,
                    description: hostelData!.description,
                  )
                ],
              ),
            ),
          ),
        )
      ],

      /* slivers: [
        detailSliverAppBarBuilder(context, hostelData: hostelData),
        persistentButtonBuilder(context, onPressed: () {
          Navigator.pushNamed(
            context,
            '/hostel_rooms',
            arguments: hostelData!.id,
          );
        }),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultSpacing - 2),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                infoCardBuilder(context, hostelData: hostelData),
                amenityCardBuilder(
                  context,
                  amenities: hostelData!.amenities,
                ), //Amenity layout builder
                descriptionCardBuilder(
                  context,
                  description: hostelData!.description,
                )
              ],
            ),
          ),
        )
      ], */
    );
  }
}
