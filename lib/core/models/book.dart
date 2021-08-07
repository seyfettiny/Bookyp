import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class Book {
  String id;
  String title;
  String? description;
  int isbn;
  int pages;
  String? file;
  String? cover;
  String? aiFile;
  String? audioFile;
  DateTime? publishDate;
  List<String> authors;
  List<String> categories;
  Book({
    required this.id,
    required this.title,
    this.description,
    required this.isbn,
    required this.pages,
    this.file,
    this.cover,
    this.aiFile,
    this.audioFile,
    this.publishDate,
    required this.authors,
    required this.categories,
  });
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  Map<String, dynamic> toJson() => _$BookToJson(this);
}
