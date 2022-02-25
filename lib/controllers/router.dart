import 'package:auto_route/auto_route.dart';
import 'package:blobgram/screens/feed.dart';
import 'package:blobgram/screens/post.dart';

import 'config.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: Path.feed,
      name: 'Feed',
      page: FeedScreen,
    ),
    AutoRoute(
      path: '/post',
      name: 'Post',
      page: PostScreen,
    ),
  ],
)
class $AppRouter {}
