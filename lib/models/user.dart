import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class User {
  final int userId;
  final String? firstName;
  final String? middleName;
  final String? lastName;
  final int phone;
  final String? email;
  final String instituteType;
  final String instituteName;
  final String? nextOfKeenName;
  final int? nextOfKeenPhone;

  User({
    required this.userId,
    this.firstName,
    this.middleName,
    this.lastName,
    required this.phone,
    this.email,
    required this.instituteType,
    required this.instituteName,
    this.nextOfKeenName,
    this.nextOfKeenPhone,
  });

  ///maps user json data to the user PODO[Plain Old Dart Object]
  /// ### Using the ```dart User.fromJson``` constructor
  /// ```dart
  /// factory User.fromJson(Map<String, dynamic> json) {
  ///    return User(
  ///      userId: json['user_id'] as int,
  ///      firstName: json['f_name'] as String,
  ///      middleName: json['m_name'] as String,
  ///      lastName: json['l_name'] as String,
  ///      phone: json['phone'] as int,
  ///      email: json['email'] as String,
  ///      instituteType: json['institute_type'] as String,
  ///      instituteName: json['institute_name'] as String,
  ///      nextOfKeenName: json['next_of_keen_name'] as String,
  ///      nextOfKeenPhone: json['next_of_keen_phone'] as int,
  ///    );
  ///  }
  /// ```
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  /* factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['user_id'] as int,
      firstName: json['f_name'] as String,
      middleName: json['m_name'] as String,
      lastName: json['l_name'] as String,
      phone: json['phone'] as int,
      email: json['email'] as String,
      instituteType: json['institute_type'] as String,
      instituteName: json['institute_name'] as String,
      nextOfKeenName: json['next_of_keen_name'] as String,
      nextOfKeenPhone: json['next_of_keen_phone'] as int,
    );
  } 

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'f_name': firstName,
      'm_name': middleName,
      'l_name': lastName,
      'phone': phone,
      'email': email,
      'institute_type': instituteType,
      'institute_name': instituteName,
      'next_of_keen_name': nextOfKeenName,
      'next_of_keen_phone': nextOfKeenPhone
    };
  }*/
}
