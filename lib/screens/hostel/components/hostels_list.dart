import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/utils/constants/routes.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'hostel_card.dart';

class HostelsList extends StatelessWidget {
  final List<Hostel>? hostels;
  HostelsList({
    Key? key,
    this.hostels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: pagePadding(
            left: kDefaultSpacing * 3,
            right: kDefaultSpacing * 3,
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) {
                return hostelCardBuilder(
                  context,
                  hostelData: hostels![i],
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      kHostelDetailRoute,
                      arguments: hostels![i].id,
                    );
                  },
                );
              },
              childCount: hostels!.length,
            ),
          ),
        )
      ],
    );
  }
}
