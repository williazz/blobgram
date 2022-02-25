// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../screens/feed.dart' as _i1;
import '../screens/post.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Feed.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FeedScreen());
    },
    Post.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PostScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/feed', fullMatch: true),
        _i3.RouteConfig(Feed.name, path: '/feed'),
        _i3.RouteConfig(Post.name, path: '/post')
      ];
}

/// generated route for
/// [_i1.FeedScreen]
class Feed extends _i3.PageRouteInfo<void> {
  const Feed() : super(Feed.name, path: '/feed');

  static const String name = 'Feed';
}

/// generated route for
/// [_i2.PostScreen]
class Post extends _i3.PageRouteInfo<void> {
  const Post() : super(Post.name, path: '/post');

  static const String name = 'Post';
}
