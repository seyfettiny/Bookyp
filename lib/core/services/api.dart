import 'dart:convert';
import 'dart:io';

import 'package:bookyp/core/models/book.dart';
import 'package:bookyp/core/models/user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Api {
  static var endpoint = dotenv.env['API_ENDPOINT'];

  Future<List<Book>> getBooks() async {
    var response = await http.get(Uri.parse(dotenv.env['GET_ALL_BOOKS']!));
    var parsed = List<Book>.from(
        json.decode(response.body).map((x) => Book.fromJson(x)));
    print(response.body);
    return parsed;
  }

  Future<User> login() async {
    var email = 'asdf@asdf.asd';
    var password = 'asdf@asdf.asd';
    var response = await http.post(
      Uri.parse(dotenv.env['LOG_IN']!),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(
        <String, String>{'email': email, 'password': password},
      ),
    );
    print(response.body);

    return User(mail: email, token: response.body);
  }

  Future<String> download() async {
    var response =
        await http.get(Uri.parse(dotenv.env['GET_FILE']! + 'Screenshot_1.txt'));
    print(response.body);
    return response.body;
  }
}
