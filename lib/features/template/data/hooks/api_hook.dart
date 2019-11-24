import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:tdd_template/core/error/exceptions.dart';

abstract class FetchURL {
  /// Calls an http endpoint
  /// with methods [GET].
  /// Throws a [ServerException] for all error codes
  Future<dynamic> getURL(String url);
}

class Fetch implements FetchURL {
  final http.Client client;

  Fetch({@required this.client});

  Future getURL(String url) async {
    final response = await client.get(
      url,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw ServerException();
    }
  }
}
