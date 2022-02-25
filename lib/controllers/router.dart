import 'package:auto_route/auto_route.dart';
import 'package:blobgram/screens/feed.dart';

import 'config.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: Path.feed,
      name: 'Feed',
      page: FeedScreen,
    ),
  ],
)
class $AppRouter {}
