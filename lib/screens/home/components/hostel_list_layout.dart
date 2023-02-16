import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/screens/appbar.dart/institute_sticky_header.dart';
import 'package:flutter/material.dart';
import 'hostel_list.dart';

class HostelListLayout extends StatelessWidget {
  final List<Hostel>? hostels;

  const HostelListLayout({Key? key, this.hostels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        instituteStickyHeader(
          context,
          institute: "Makerere University-main",
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              hostelListBuilder(
                context,
                hostels: hostels,
                listTitle: "Most popular",
              ),
              hostelListBuilder(
                context,
                hostels: hostels,
                listTitle: "Most booked",
              ),
              hostelListBuilder(
                context,
                hostels: hostels,
                listTitle: "Recommended",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
