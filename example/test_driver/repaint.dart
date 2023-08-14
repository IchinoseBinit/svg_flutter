import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:svg_flutter/svg_flutter.dart';

void main() {
  enableFlutterDriverExtension();
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SvgPicture.asset('assets/wikimedia/Ghostscript_Tiger.svg'),
          const CircularProgressIndicator(),
        ],
      ),
    ),
  );
}
