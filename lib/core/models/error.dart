import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class Error implements Exception {
  String? message;
  int? status;
  Error({this.message, this.status});

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'status': status,
    };
  }

  factory Error.fromMap(Map<String, dynamic> map) {
    return Error(
      message: map['message'],
      status: map['status'],
    );
  }

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Error && other.message == message && other.status == status;
  }

  @override
  int get hashCode => message.hashCode ^ status.hashCode;

  @override
  String toString() => 'Error(message: $message, status: $status)';
}

class FetchDataException extends Error {
  FetchDataException([message, status])
      : super(message: message, status: status);
}

class BadRequestException extends Error {
  BadRequestException([message, status])
      : super(message: message, status: status);
}

class UnauthorizedException extends Error {
  UnauthorizedException([message, status])
      : super(message: message, status: status);
}

class InvalidInputException extends Error {
  InvalidInputException([message, status])
      : super(message: message, status: status);
}
