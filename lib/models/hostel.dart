import 'package:campass_home/models/amenity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'images.dart';

part 'hostel.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Hostel {
  final int id;
  final String name;
  final int rooms;
  final String type;
  final String structureType;
  final double rating;
  final String imageUrl;
  final String description;
  final List<Amenity>? amenities;
  final List<Images>? images;

  Hostel({
    required this.id,
    required this.name,
    required this.rooms,
    required this.type,
    required this.structureType,
    required this.rating,
    required this.imageUrl,
    required this.description,
    this.amenities,
    this.images,
  });

  factory Hostel.fromJson(Map<String, dynamic> json) => _$HostelFromJson(json);

  Map<String, dynamic> toJson() => _$HostelToJson(this);

  /* factory Hostel.fromJson(Map<String, dynamic> json) {
    return Hostel(
      id: json['id'] as int,
      name: json['name'] as String,
      rooms: json['rooms'] as int,
      type: json['type'] as String,
      rating: json['rating'] as double,
      imageUrl: json['image_url'] as String,
      description: json['description'] as String,
      amenities: json['amenities'] as List<Amenity>,
      images: json['images'] as List<HostelImage>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'rooms': rooms,
      'type': type,
      'rating': rating,
      'image_url': imageUrl,
      'description': description,
      'amenities': amenities,
      'images': images
    };
  } */
}
