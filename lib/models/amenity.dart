import 'package:json_annotation/json_annotation.dart';
part 'amenity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Amenity {
  final int id;
  final dynamic icon;
  final String name;
  Amenity({required this.id, required this.icon, required this.name});

  factory Amenity.fromJson(Map<String, dynamic> json) =>
      _$AmenityFromJson(json);

  Map<String, dynamic> toJson() => _$AmenityToJson(this);

  /*  factory Amenity.fromJson(Map<String, dynamic> json) {
    return Amenity(
      id: json['id'] as int,
      icon: json['icon'] as IconData,
      name: json['amenity_name'] as String,
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'icon': icon, 'name': name}; */
}
