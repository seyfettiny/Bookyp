// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String?,
    isbn: json['isbn'] as int,
    pages: json['pages'] as int,
    file: json['file'] as String?,
    cover: json['cover'] as String?,
    aiFile: json['aiFile'] as String?,
    audioFile: json['audioFile'] as String?,
    publishDate: json['publishDate'] == null
        ? null
        : DateTime.parse(json['publishDate'] as String),
    authors:
        (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
    categories:
        (json['categories'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'isbn': instance.isbn,
      'pages': instance.pages,
      'file': instance.file,
      'cover': instance.cover,
      'aiFile': instance.aiFile,
      'audioFile': instance.audioFile,
      'publishDate': instance.publishDate?.toIso8601String(),
      'authors': instance.authors,
      'categories': instance.categories,
    };
