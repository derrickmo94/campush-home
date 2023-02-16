import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'hostel_card.dart';
import 'hostel_list_header.dart';

Widget hostelListBuilder(BuildContext context,
    {List<Hostel>? hostels, required String listTitle}) {
  return Column(
    children: [
      hostelHeaderBuilder(
        context,
        title: listTitle,
        onPress: () {
          Navigator.of(context).pushNamed(kHostelRoute);
        },
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 4.0),
        height: 150,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          itemCount: (hostels!.length == 0) ? 0 : hostels.length,
          itemBuilder: (context, i) {
            return HostelCard(
              hostelData: hostels.elementAt(i),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  kHostelDetailRoute,
                  arguments: hostels[i].id,
                );
              },
            );
          },
        ),
      ),
    ],
  );
}
