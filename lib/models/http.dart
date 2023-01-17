import 'dart:convert';
import 'dart:io';

import '../enums/request_types.dart';

class Http {
  var client = HttpClient();

  Future<String?> request(
      String host, int port, String path, RequestTypes reqType) async {
    try {
      HttpClientRequest req;
      req = await client.open(reqType.name, host, port, path);
      //TODO: figure out best way to set headers pragmatically
      //req.headers.set(name, value);
      var response = await req.close();

      await for (var contents in response.transform(const Utf8Decoder())) {
        return contents;
      }
      return null;
    } finally {
      client.close();
    }
  }
}
