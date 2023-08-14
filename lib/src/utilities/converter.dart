import 'dart:convert';
import 'dart:typed_data';

Uint8List getUintList(String image) {
  return base64Decode(image);
}