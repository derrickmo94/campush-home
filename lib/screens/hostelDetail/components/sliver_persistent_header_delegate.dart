import 'package:campass_home/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  //final Color backgroundColor;
  //final Widget child;
  PersistentHeaderDelegate();
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      height: 50,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.only(top: 0),
      child: OutlinedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Book your next room"),
            Icon(Icons.chevron_right),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, kHostelRoomRoute);
        },
      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
