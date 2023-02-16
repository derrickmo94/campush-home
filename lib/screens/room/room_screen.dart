import 'package:campass_home/api/offline/rooms_api.dart';
import 'package:campass_home/models/room.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/room_list.dart';

class RoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int hostelId = ModalRoute.of(context)!.settings.arguments as int;
    print("HOSTEL ID: $hostelId");
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      appBar: AppBar(
        title: Text("Hostel Rooms"),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
          )
        ],
      ),
      body: FutureBuilder<List<Room>>(
        future: RoomApi.getHostelRoomsWhere(hostelId: hostelId),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Room data connection state ${snapshot.connectionState}");
          }

          return snapshot.hasData
              ? RoomList(rooms: snapshot.data)
              : Center(child: CupertinoActivityIndicator(radius: 20));
        },
      ),
    );
  }
}
