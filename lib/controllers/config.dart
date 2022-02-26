import 'package:flutter/foundation.dart';

@immutable
abstract class RouterName {
  static const feed = 'FeedRouter';
  static const you = 'YouRouter';
}

@immutable
abstract class TabPath {
  static const feed = 'feed';
  static const you = 'you';
}

@immutable
abstract class PagePath {
  static const notFound = '*';
  static const user = 'user/:username';
  static const post = 'post/:postId';
}
