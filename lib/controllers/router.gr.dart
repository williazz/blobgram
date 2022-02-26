// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../home.dart' as _i1;
import '../pages/feed.dart' as _i3;
import '../pages/post.dart' as _i4;
import '../pages/user.dart' as _i5;
import '../pages/you.dart' as _i6;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    FeedRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    YouRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    FeedRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.FeedPage());
    },
    PostRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PostRouteArgs>(
          orElse: () => PostRouteArgs(postId: pathParams.getString('postId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.PostPage(key: args.key, postId: args.postId));
    },
    UserRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserRouteArgs>(
          orElse: () =>
              UserRouteArgs(username: pathParams.getString('username')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.UserPage(key: args.key, username: args.username));
    },
    YouRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.YouPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'feed',
              fullMatch: true),
          _i2.RouteConfig(FeedRouter.name,
              path: 'feed',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(FeedRoute.name,
                    path: '', parent: FeedRouter.name),
                _i2.RouteConfig(PostRoute.name,
                    path: 'post/:postId', parent: FeedRouter.name),
                _i2.RouteConfig(UserRoute.name,
                    path: 'user/:username', parent: FeedRouter.name)
              ]),
          _i2.RouteConfig(YouRouter.name,
              path: 'you',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(YouRoute.name,
                    path: '', parent: YouRouter.name),
                _i2.RouteConfig(PostRoute.name,
                    path: 'post/:postId', parent: YouRouter.name),
                _i2.RouteConfig(UserRoute.name,
                    path: 'user/:username', parent: YouRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class FeedRouter extends _i2.PageRouteInfo<void> {
  const FeedRouter({List<_i2.PageRouteInfo>? children})
      : super(FeedRouter.name, path: 'feed', initialChildren: children);

  static const String name = 'FeedRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class YouRouter extends _i2.PageRouteInfo<void> {
  const YouRouter({List<_i2.PageRouteInfo>? children})
      : super(YouRouter.name, path: 'you', initialChildren: children);

  static const String name = 'YouRouter';
}

/// generated route for
/// [_i3.FeedPage]
class FeedRoute extends _i2.PageRouteInfo<void> {
  const FeedRoute() : super(FeedRoute.name, path: '');

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i4.PostPage]
class PostRoute extends _i2.PageRouteInfo<PostRouteArgs> {
  PostRoute({_i7.Key? key, required String postId})
      : super(PostRoute.name,
            path: 'post/:postId',
            args: PostRouteArgs(key: key, postId: postId),
            rawPathParams: {'postId': postId});

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.postId});

  final _i7.Key? key;

  final String postId;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i5.UserPage]
class UserRoute extends _i2.PageRouteInfo<UserRouteArgs> {
  UserRoute({_i7.Key? key, required String username})
      : super(UserRoute.name,
            path: 'user/:username',
            args: UserRouteArgs(key: key, username: username),
            rawPathParams: {'username': username});

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({this.key, required this.username});

  final _i7.Key? key;

  final String username;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i6.YouPage]
class YouRoute extends _i2.PageRouteInfo<void> {
  const YouRoute() : super(YouRoute.name, path: '');

  static const String name = 'YouRoute';
}
