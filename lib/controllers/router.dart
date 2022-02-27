import 'package:auto_route/auto_route.dart';
import 'package:blobgram/auth/pages/link_sent.dart';
import 'package:blobgram/auth/pages/login.dart';
import 'package:blobgram/auth/pages/signup.dart';
import 'package:blobgram/pages/feed.dart';
import 'package:blobgram/home.dart';
import 'package:blobgram/pages/not_found.dart';
import 'package:blobgram/pages/post.dart';
import 'package:blobgram/pages/user.dart';
import 'package:blobgram/pages/you.dart';

import 'config.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(initial: true, path: Path.home, page: HomePage, children: [
      AutoRoute(
          initial: true,
          path: Path.feed,
          name: RouterName.feed,
          page: EmptyRouterPage,
          children: [
            AutoRoute(initial: true, path: '', page: FeedPage),
            AutoRoute(path: Path.post, page: PostPage),
            AutoRoute(path: Path.user, page: UserPage),
            AutoRoute(path: '*', page: NotFoundPage),
          ]),
      AutoRoute(
          path: Path.you,
          name: RouterName.you,
          page: EmptyRouterPage,
          children: [
            AutoRoute(initial: true, path: '', page: YouPage),
            AutoRoute(path: Path.post, page: PostPage),
            AutoRoute(path: Path.user, page: UserPage),
            AutoRoute(path: '*', page: NotFoundPage),
          ]),
    ]),
    AutoRoute(
        path: Path.auth,
        name: RouterName.auth,
        page: EmptyRouterPage,
        fullscreenDialog: true,
        children: [
          AutoRoute(initial: true, path: Path.login, page: LoginPage),
          AutoRoute(path: Path.signup, page: SignupPage),
          AutoRoute(path: Path.linkSent, page: LinkSentPage),
          AutoRoute(path: '*', page: NotFoundPage),
        ]),
    AutoRoute(path: '*', page: NotFoundPage),
  ],
)
class $AppRouter {}
