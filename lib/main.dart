import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app.dart';
import 'services/setup.dart';

void main() async {
  await setup();
  setPathUrlStrategy();
  runApp(const BlobgramApp());
}
