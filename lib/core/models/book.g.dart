// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book(
    author: json['author'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    detail: json['detail'] as String?,
    title: json['title'] as String,
    imgUrl: json['imgUrl'] as String,
    bookFileName: json['bookFileName'] as String,
    id: json['id'] as int,
    price: json['price'] as int?,
    rating: (json['rating'] as num).toDouble(),
  );
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'author': instance.author,
      'date': instance.date?.toIso8601String(),
      'detail': instance.detail,
      'title': instance.title,
      'imgUrl': instance.imgUrl,
      'bookFileName': instance.bookFileName,
      'id': instance.id,
      'price': instance.price,
      'rating': instance.rating,
    };
