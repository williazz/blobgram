import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app.dart';

void main() async {
  if (kIsWeb) setPathUrlStrategy();
  runApp(BlobgramApp());
}
