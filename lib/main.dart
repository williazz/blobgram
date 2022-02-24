import 'package:flutter/material.dart';

import 'app.dart';
import 'services/setup.dart';

void main() async {
  await setup();
  runApp(
    const BlobgramApp(),
  );
}
