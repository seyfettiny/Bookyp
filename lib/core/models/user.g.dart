// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    token: json['token'] as String?,
    id: json['id'] as int?,
    mail: json['mail'] as String?,
    name: json['name'] as String?,
    books: json['books'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'mail': instance.mail,
      'name': instance.name,
      'books': instance.books,
    };
