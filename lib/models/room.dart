import 'package:json_annotation/json_annotation.dart';
part 'room.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Room {
  final int id;
  final int hostelId;
  final int roomNumber;
  final String roomType;
  final int roomSpace;
  final int bookedSpace;
  final String? roomFloor;
  final String? roomGender;
  final int? roomLikes;
  final double roomAmount;
  final String roomStatus;

  Room({
    required this.id,
    required this.hostelId,
    required this.roomNumber,
    required this.roomType,
    required this.roomSpace,
    required this.bookedSpace,
    this.roomFloor,
    this.roomGender,
    this.roomLikes,
    required this.roomAmount,
    required this.roomStatus,
  });

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

  Map<String, dynamic> toJson() => _$RoomToJson(this);

  /* factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      roomNumber: json['room_number'] as int,
      roomType: json['room_type'] as String,
      roomSpace: json['room_space'] as int,
      roomFloor: json['room_floor'] as String,
      genderStatus: json['gender_status'] as String,
      roomLikes: json['room_likes'] as int,
      roomAmount: json['room_amount'] as double,
      roomStatus: json['room_status'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'room_number': roomNumber,
      'room_type': roomType,
      'room_space': roomSpace,
      'room_floor': roomFloor,
      'gender_status': genderStatus,
      'room_likes': roomLikes,
      'room_amount': roomAmount,
      'room_status': roomStatus,
    };
  } */
}
