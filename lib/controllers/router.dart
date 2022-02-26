import 'package:auto_route/auto_route.dart';
import 'package:blobgram/pages/feed.dart';
import 'package:blobgram/home.dart';
import 'package:blobgram/pages/post.dart';
import 'package:blobgram/pages/user.dart';

import 'config.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: TabPath.feed,
          name: RouterName.feed,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: FeedPage,
            ),
            AutoRoute(
              path: PagePath.post,
              page: PostPage,
            ),
            AutoRoute(
              path: PagePath.user,
              page: UserPage,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
