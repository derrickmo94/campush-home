import 'package:campass_home/api/offline/hostels_api.dart';
import 'package:campass_home/api/offline/rooms_api.dart';
import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/models/room.dart';
import 'package:campass_home/screens/appbar.dart/default_appbar.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/booking_page.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int roomId = ModalRoute.of(context)!.settings.arguments as int;
    print("ROOM ID: $roomId\n");
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      appBar: defaultAppbarBuilder(
        context,
        title: Text("Room Booking"),
        background: defaultPrimaryColor(),
      ),
      body: FutureBuilder<Room>(
        future: RoomApi.getRoom(roomId: roomId),
        builder: (context, roomSnapshot) {
          if (roomSnapshot.hasError) {
            print("Room Snap Shot Error: ${roomSnapshot.error}");
            // print("Room data connection state ${roomSnapshot.connectionState}");
          }
          if (roomSnapshot.hasData) {
            print("Room Snap Shot value: ${roomSnapshot.data!.roomNumber}");
          }

          return roomSnapshot.hasData
              ? FutureBuilder<Hostel>(
                  future: HostelApi.getHostel(
                      hostelId: roomSnapshot.data!.hostelId),
                  builder: (context, hostelSnapshot) {
                    if (hostelSnapshot.hasError) {
                      print(
                          "Hostel data connection state ${hostelSnapshot.connectionState}");
                    }
                    return hostelSnapshot.hasData
                        ? BookingPage(
                            hostelName: hostelSnapshot.data!.name,
                            room: roomSnapshot.data!,
                          )
                        : Center(child: CupertinoActivityIndicator(radius: 20));
                  },
                )
              : Center(child: CupertinoActivityIndicator(radius: 20));
        },
      ),
    );
  }
}
