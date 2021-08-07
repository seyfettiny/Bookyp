import 'dart:convert';
import 'dart:io';

import 'package:bookyp/core/models/error.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class Api {
  var endpoint = dotenv.env['API_ENDPOINT'];

  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(endpoint! + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, Map body) async {
    var responseJson;
    try {
      final response = await http.post(Uri.parse(endpoint! + url),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          },
          body: jsonEncode(body));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body);
        return responseJson;
      case 400:
        var responseError = Error.fromJson(json.decode(response.body));
        throw BadRequestException(responseError.message, responseError.status);
      case 401:
        var responseError = Error.fromJson(json.decode(response.body));
        throw InvalidInputException(
            responseError.message, responseError.status);
      case 403:
        var responseError = Error.fromJson(json.decode(response.body));
        throw UnauthorizedException(
            responseError.message, responseError.status);
      case 500:
      default:
        throw FetchDataException(
            'Error occured while connecting to the server: ${response.statusCode}');
    }
  }
  /*
  Future<List<Book>> getBooks() async {
    var response = await http.get(Uri.parse(dotenv.env['GET_ALL_BOOKS']!));
    var parsed = List<Book>.from(
        json.decode(response.body).map((x) => Book.fromJson(x)));
    print(response.body);
    return parsed;
  }

  Future<dynamic> login(String email, String password) async {
    var response = await http.post(
      Uri.parse(dotenv.env['LOG_IN']!),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(
        <String, String>{'email': email, 'password': password},
      ),
    );
    print(Uri.parse(dotenv.env['LOG_IN']!));
    print(response.body);
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    } else {
      return Error.fromJson(response.body);
    }
  }

  Future<String> download() async {
    var response =
        await http.get(Uri.parse(dotenv.env['GET_FILE']! + 'Screenshot_1.txt'));
    print(response.body);
    return response.body;
  }
  */
}
