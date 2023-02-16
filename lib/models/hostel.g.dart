// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hostel _$HostelFromJson(Map<String, dynamic> json) {
  return Hostel(
    id: json['id'] as int,
    name: json['name'] as String,
    rooms: json['rooms'] as int,
    type: json['type'] as String,
    structureType: json['structure_type'] as String,
    rating: (json['rating'] as num).toDouble(),
    imageUrl: json['image_url'] as String,
    description: json['description'] as String,
    amenities: (json['amenities'] as List<dynamic>?)
        ?.map((e) => Amenity.fromJson(e as Map<String, dynamic>))
        .toList(),
    images: (json['images'] as List<dynamic>?)
        ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HostelToJson(Hostel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rooms': instance.rooms,
      'type': instance.type,
      'structure_type': instance.structureType,
      'rating': instance.rating,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'amenities': instance.amenities?.map((e) => e.toJson()).toList(),
      'images': instance.images?.map((e) => e.toJson()).toList(),
    };
