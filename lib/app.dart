import 'package:blobgram/controllers/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home.dart';
import 'screens/not_found.dart';
import 'screens/profile.dart';

class BlobgramApp extends StatelessWidget {
  const BlobgramApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'blobgram',
      debugShowCheckedModeBanner: false,
      initialRoute: Path[Paths.profile]!,
      unknownRoute: GetPage(
          name: Path[Paths.notFound]!, page: () => const NotFoundScreen()),
      getPages: [
        GetPage(name: Path[Paths.home]!, page: () => const HomeScreen()),
        GetPage(name: Path[Paths.profile]!, page: () => ProfileScreen()),
      ],
    );
  }
}
