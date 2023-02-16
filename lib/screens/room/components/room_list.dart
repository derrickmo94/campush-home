import 'package:campass_home/models/room.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'room_card.dart';

class RoomList extends StatelessWidget {
  final List<Room>? rooms;
  const RoomList({Key? key, required this.rooms}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: pagePadding(),
      itemCount: rooms!.length,
      itemBuilder: (context, i) {
        return roomCardBuilder(context, room: rooms![i]);
        /* rooms != null || !(rooms!.length == 0)
            ? roomCardBuilder(context, room: rooms![i])
            : Center(
                child: Text("No data"),
              ); */
      },
    );
  }
}
