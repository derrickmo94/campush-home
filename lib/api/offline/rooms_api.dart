import 'package:campass_home/models/room.dart';
import 'core/core_api.dart';

abstract class RoomApi {
  /// Returns none or more rooms that belong to a particular hostel
  static Future<List<Room>> getHostelRoomsWhere({
    required int hostelId,
  }) async {
    var data = await CoreApi.decodeListData<Room>(
      jsonFile: "lib/data/rooms.json",
      fromJson: (jsonMap) => Room.fromJson(jsonMap),
    );

    return (data.where((el) => el.hostelId == hostelId)).toList();
  }

  ///Returns a single selected hostel room of a given hostel
  static Future<Room> getRoom({required int roomId}) async {
    var data = await CoreApi.decodeListData<Room>(
      jsonFile: "lib/data/rooms.json",
      fromJson: (jsonMap) => Room.fromJson(jsonMap),
    );
    //print("Room VALUE: ${data.toString()}");
    //var df = print("Room VALUE: ${df.roomNumber}");
    return data.singleWhere((e) => e.id == roomId);
  }
}
