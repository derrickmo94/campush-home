import 'package:json_annotation/json_annotation.dart';
part 'images.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Images {
  final int id;
  final String imageUrl;

  Images({required this.id, required this.imageUrl});

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);

  /* factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      id: json['id'] as int,
      imageUrl: json['image_url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'image_url': imageUrl};
  } */
}
