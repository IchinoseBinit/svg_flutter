import 'dart:io';
import 'dart:typed_data'; // ignore: unnecessary_import

import 'package:flutter/foundation.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:svg_flutter/src/utilities/converter.dart';

/// Fetches an HTTP resource from the specified [url] using the specified [headers].
Future<Uint8List> httpGet(String url, {Map<String, String>? headers}) async {
  final HttpClient httpClient = HttpClient();
  final Uri uri = Uri.base.resolve(url);
  final HttpClientRequest request = await httpClient.getUrl(uri);
  if (headers != null) {
    headers.forEach((String key, String value) {
      request.headers.add(key, value);
    });
  }
  final HttpClientResponse response = await request.close();

  if (response.statusCode != HttpStatus.ok) {
    return getUintList(SvgPicture.errorImage);
  }
  return consolidateHttpClientResponseBytes(response);
}
