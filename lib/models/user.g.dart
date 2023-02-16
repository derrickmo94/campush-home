// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    userId: json['user_id'] as int,
    firstName: json['first_name'] as String?,
    middleName: json['middle_name'] as String?,
    lastName: json['last_name'] as String?,
    phone: json['phone'] as int,
    email: json['email'] as String?,
    instituteType: json['institute_type'] as String,
    instituteName: json['institute_name'] as String,
    nextOfKeenName: json['next_of_keen_name'] as String?,
    nextOfKeenPhone: json['next_of_keen_phone'] as int?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'institute_type': instance.instituteType,
      'institute_name': instance.instituteName,
      'next_of_keen_name': instance.nextOfKeenName,
      'next_of_keen_phone': instance.nextOfKeenPhone,
    };
