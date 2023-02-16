// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) {
  return Room(
    id: json['id'] as int,
    hostelId: json['hostel_id'] as int,
    roomNumber: json['room_number'] as int,
    roomType: json['room_type'] as String,
    roomSpace: json['room_space'] as int,
    bookedSpace: json['booked_space'] as int,
    roomFloor: json['room_floor'] as String?,
    roomGender: json['room_gender'] as String?,
    roomLikes: json['room_likes'] as int?,
    roomAmount: (json['room_amount'] as num).toDouble(),
    roomStatus: json['room_status'] as String,
  );
}

Map<String, dynamic> _$RoomToJson(Room instance) => <String, dynamic>{
      'id': instance.id,
      'hostel_id': instance.hostelId,
      'room_number': instance.roomNumber,
      'room_type': instance.roomType,
      'room_space': instance.roomSpace,
      'booked_space': instance.bookedSpace,
      'room_floor': instance.roomFloor,
      'room_gender': instance.roomGender,
      'room_likes': instance.roomLikes,
      'room_amount': instance.roomAmount,
      'room_status': instance.roomStatus,
    };
