import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: ListView.builder(
        padding: pagePadding(),
        itemCount: 20,
        itemBuilder: (context, i) {
          return Card(
            elevation: kDefaultSpacing * 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                kDefaultSpacing * 2,
              ),
            ),
            child: ExpandablePanel(
              header: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Payment Reminder",
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    hLineSpace(),
                    Text(
                      "12/05/2020",
                      softWrap: true,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle2,
                    )
                  ],
                ),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Dear Sam, you are here by being remainded to '
                  'make payment of the remaining balance amounting to a total '
                  'sum of UGX 200,000 not later than 02/07/2021 to avoid any '
                  'inconviniences.',
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              expanded: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Dear Sam, you are here by being remainded to '
                  'make payment of the remaining balance amounting to a total '
                  'sum of UGX 200,000 not later than 02/07/2021 to avoid any '
                  'inconviniences.',
                  softWrap: true,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
