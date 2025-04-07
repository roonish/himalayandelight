import 'dart:convert';
import 'package:http/http.dart' as http;

import '../utils/exceptions.dart';
import '../utils/stringutils.dart';

class HttpApi {
  final String _baseUrl;
  // final TokenStorage _tokenStorage;

  HttpApi(
    this._baseUrl,
    //  this._tokenStorage
  );

  Future<Map<String, String>> _getHeaders(
      {String contentType = 'application/json'}) async {
    // final String userToken = await _tokenStorage.getToken();
    final Map<String, String> headers = <String, String>{
      'Content-Type': contentType,
    };

    // if (!StringUtil.isNullOrEmpty(userToken)) {
    //   headers.putIfAbsent('Authorization', () => 'Bearer $userToken');
    // }

    return headers;
  }

  Future<dynamic> get(
    String uri, [
    Map<String, String> params = const <String, String>{},
  ]) async {
    http.Response response;
    response = await http.get(
      Uri.parse(_baseUrl + uri),
      headers: await _getHeaders(),
    );

    _validateStatusCode(response);

    return response.body.isEmpty
        ? <dynamic>[]
        : json.decode(StringUtil.rawToUTF8(response.body));
  }

  Future<dynamic> delete(String uri) async {
    http.Response response;
    response = await http.delete(
      Uri.parse(_baseUrl + uri),
      headers: await _getHeaders(),
    );

    _validateStatusCode(response);
    return response.body.isEmpty
        ? response.body
        : json.decode(StringUtil.rawToUTF8(response.body));
  }

  Future<dynamic> post(
    String uri, [
    dynamic body = const <String, dynamic>{},
  ]) async {
    http.Response response;

    response = await http.post(
      Uri.parse(_baseUrl + uri),
      headers: await _getHeaders(),
      body: jsonEncode(body),
    );

    _validateStatusCode(response);

    return json.decode(StringUtil.rawToUTF8(response.body));
  }

  Future<dynamic> put(
    String uri, [
    dynamic body = const <String, dynamic>{},
  ]) async {
    http.Response response;

    response = await http.put(
      Uri.parse(_baseUrl + uri),
      headers: await _getHeaders(),
      body: jsonEncode(body),
    );

    _validateStatusCode(response);

    return json.decode(StringUtil.rawToUTF8(response.body));
  }

  void _validateStatusCode(http.Response response) {
    if (response.statusCode >= 500) {
      throw ServerException(response.statusCode, response.body);
    }

    if (response.statusCode == 401 || response.statusCode == 403) {
      throw InvalidCredentialsException(response.statusCode, response.body);
    }

    if (response.statusCode >= 400) {
      throw ClientException(response.statusCode, response.body);
    }
  }
}
