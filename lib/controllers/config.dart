import 'package:flutter/foundation.dart';

@immutable
class Path {
  // // tabs
  // static const home = '/home';
  // static const you = '/you';

  // pages
  static const notFound = '/notfound';
  static const feed = '/feed';
  static const user = '/user/:username';
  static const post = '/post/:postId';
}

@immutable
class Param {
  static const username = 'username';
  static const postId = 'postId';
}
