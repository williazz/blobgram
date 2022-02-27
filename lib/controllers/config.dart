import 'package:flutter/foundation.dart';

@immutable
abstract class RouterName {
  static const feed = 'FeedRouter';
  static const you = 'YouRouter';
  static const auth = 'AuthRouter';
}

@immutable
abstract class Path {
  static const notFound = '*';

  // root
  static const home = '/';
  static const auth = '/auth';

  // tabs
  static const feed = 'feed';
  static const you = 'you';

  // pages
  static const user = 'user/:username';
  static const post = 'post/:postId';

  static const login = 'login';
  static const signup = 'signup';
}
