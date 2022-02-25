import 'package:auto_route/auto_route.dart';
import 'package:blobgram/screens/home.dart';
import 'package:blobgram/screens/profile.dart';

import 'config.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: Path.home,
      page: HomeScreen,
    ),
    AutoRoute(
      path: Path.profile,
      page: ProfileScreen,
    ),
  ],
)
class $AppRouter {}
