import 'package:blobgram/controllers/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home.dart';
import 'screens/not_found.dart';
import 'screens/post.dart';
import 'screens/profile.dart';

class BlobgramApp extends StatelessWidget {
  const BlobgramApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'blobgram',
      debugShowCheckedModeBanner: false,
      initialRoute: Path.home,
      defaultTransition: Transition.rightToLeftWithFade,
      unknownRoute:
          GetPage(name: Path.notFound, page: () => const NotFoundScreen()),
      getPages: [
        GetPage(name: Path.home, page: () => const HomeScreen()),
        GetPage(name: Path.profile, page: () => ProfileScreen()),
        GetPage(name: Path.post, page: () => const PostScreen()),
      ],
    );
  }
}
