import 'package:campass_home/api/offline/hostels_api.dart';
import 'package:campass_home/models/hostel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/detail_body.dart';

class HostelDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    int hostelId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 242, 248, 1),
      body: FutureBuilder<Hostel>(
        future: HostelApi.getHostel(hostelId: hostelId),
        builder: (context, snapshot) {
          if (snapshot.hasError) print("Data error ${snapshot.error}");
          return snapshot.hasData
              ? DetailsBody(hostelData: snapshot.data)
              : Center(
                  child: CupertinoActivityIndicator(
                    radius: 5.0,
                  ),
                );
        },
      ),

      //DetailsBody(hostelId: hostelId),
    );
  }
}
