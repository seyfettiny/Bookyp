import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? jwtToken;
  int id;
  String mail;
  String? name;
  User({
    this.jwtToken,
    required this.id,
    required this.mail,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'jwtToken': jwtToken,
      'id': id,
      'mail': mail,
      'name': name,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      jwtToken: map['jwtToken'],
      id: map['id'],
      mail: map['mail'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
