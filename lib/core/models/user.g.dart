// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    jwtToken: json['jwtToken'] as String?,
    id: json['id'] as int,
    mail: json['mail'] as String,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'jwtToken': instance.jwtToken,
      'id': instance.id,
      'mail': instance.mail,
      'name': instance.name,
    };
