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
import 'package:flutter/material.dart' as _i10;

import '../auth/pages/login.dart' as _i8;
import '../auth/pages/signup.dart' as _i9;
import '../home.dart' as _i1;
import '../pages/feed.dart' as _i4;
import '../pages/not_found.dart' as _i3;
import '../pages/post.dart' as _i5;
import '../pages/user.dart' as _i6;
import '../pages/you.dart' as _i7;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    AuthRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i2.EmptyRouterPage(),
          fullscreenDialog: true);
    },
    NotFoundRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NotFoundPage());
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
          routeData: routeData, child: const _i4.FeedPage());
    },
    PostRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PostRouteArgs>(
          orElse: () => PostRouteArgs(postId: pathParams.getString('postId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.PostPage(key: args.key, postId: args.postId));
    },
    UserRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserRouteArgs>(
          orElse: () =>
              UserRouteArgs(username: pathParams.getString('username')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.UserPage(key: args.key, username: args.username));
    },
    YouRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.YouPage());
    },
    LoginRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LoginPage());
    },
    SignupRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SignupPage());
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
                    path: 'user/:username', parent: FeedRouter.name),
                _i2.RouteConfig(NotFoundRoute.name,
                    path: '*', parent: FeedRouter.name)
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
                    path: 'user/:username', parent: YouRouter.name),
                _i2.RouteConfig(NotFoundRoute.name,
                    path: '*', parent: YouRouter.name)
              ])
        ]),
        _i2.RouteConfig(AuthRouter.name, path: '/auth', children: [
          _i2.RouteConfig('#redirect',
              path: '',
              parent: AuthRouter.name,
              redirectTo: 'login',
              fullMatch: true),
          _i2.RouteConfig(LoginRoute.name,
              path: 'login', parent: AuthRouter.name),
          _i2.RouteConfig(SignupRoute.name,
              path: 'signup', parent: AuthRouter.name),
          _i2.RouteConfig(NotFoundRoute.name,
              path: '*', parent: AuthRouter.name)
        ]),
        _i2.RouteConfig(NotFoundRoute.name, path: '*')
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
class AuthRouter extends _i2.PageRouteInfo<void> {
  const AuthRouter({List<_i2.PageRouteInfo>? children})
      : super(AuthRouter.name, path: '/auth', initialChildren: children);

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i3.NotFoundPage]
class NotFoundRoute extends _i2.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
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
/// [_i4.FeedPage]
class FeedRoute extends _i2.PageRouteInfo<void> {
  const FeedRoute() : super(FeedRoute.name, path: '');

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i5.PostPage]
class PostRoute extends _i2.PageRouteInfo<PostRouteArgs> {
  PostRoute({_i10.Key? key, required String postId})
      : super(PostRoute.name,
            path: 'post/:postId',
            args: PostRouteArgs(key: key, postId: postId),
            rawPathParams: {'postId': postId});

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.postId});

  final _i10.Key? key;

  final String postId;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i6.UserPage]
class UserRoute extends _i2.PageRouteInfo<UserRouteArgs> {
  UserRoute({_i10.Key? key, required String username})
      : super(UserRoute.name,
            path: 'user/:username',
            args: UserRouteArgs(key: key, username: username),
            rawPathParams: {'username': username});

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({this.key, required this.username});

  final _i10.Key? key;

  final String username;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i7.YouPage]
class YouRoute extends _i2.PageRouteInfo<void> {
  const YouRoute() : super(YouRoute.name, path: '');

  static const String name = 'YouRoute';
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i9.SignupPage]
class SignupRoute extends _i2.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: 'signup');

  static const String name = 'SignupRoute';
}
