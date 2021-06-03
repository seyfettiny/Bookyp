import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class Book {
  String? author;

  @JsonKey(name: 'date')
  DateTime? date;
  String? detail;
  String title;
  String imgUrl;
  int id;
  int? price;
  double rating;
  Book({
    this.author,
    this.date,
    this.detail,
    required this.title,
    required this.imgUrl,
    required this.id,
    this.price,
    required this.rating,
  });

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'date': date,
      'detail': detail,
      'title': title,
      'imgUrl': imgUrl,
      'id': id,
      'price': price,
      'rating': rating,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      author: map['author'],
      date: map['date'],
      detail: map['detail'],
      title: map['title'],
      imgUrl: map['imgUrl'],
      id: map['id'],
      price: map['price'],
      rating: map['rating'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));
}
