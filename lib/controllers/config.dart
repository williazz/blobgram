import 'package:flutter/foundation.dart';

@immutable
class Path {
  static const notFound = '/notfound';
  static const home = '/home';
  static const profile = '/user/:username';
  static const user = '/user';
  static const explore = '/explore';
  static const post = '/post/:postId';
}

@immutable
class Param {
  static const username = 'username';
  static const postId = 'postId';
}
