import 'package:flutter/foundation.dart';

@immutable
abstract class RouterName {
  static const feed = 'FeedRouter';
}

@immutable
abstract class TabPath {
  static const feed = 'feed';
  static const you = 'you';
}

@immutable
abstract class PagePath {
  static const feed = 'feed';
  static const user = 'user/:username';
  static const post = 'post/:postId';
}
