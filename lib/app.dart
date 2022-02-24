import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home.dart';

class BlobgramApp extends StatelessWidget {
  const BlobgramApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'blobgram',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
