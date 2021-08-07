import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? token;
  int? id;
  String? mail;
  String? name;
  List? books;
  User({
    this.token,
    this.id,
    this.mail,
    this.name,
    this.books,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return 'User(token: $token, id: $id, mail: $mail, name: $name, books: $books)';
  }
}
