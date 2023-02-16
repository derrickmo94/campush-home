import 'package:campass_home/api/offline/hostels_api.dart';
import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/screens/appbar.dart/default_appbar.dart';
import 'package:campass_home/screens/hostel/components/hostels_list.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HostelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kDefaultBackgroundColor,
        appBar: defaultAppbarBuilder(
          context,
          title: Text("Hostels"),
          actions: [
            IconButton(
              icon: Icon(Icons.filter_list_alt),
              onPressed: () {},
            ),
          ],
        ),
        body: FutureBuilder<List<Hostel>>(
          future: HostelApi.getHostels(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? HostelsList(hostels: snapshot.data)
                : Center(
                    child: CupertinoActivityIndicator(
                      radius: 20.0,
                    ),
                  );
          },
        ));
  }
}
