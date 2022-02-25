import 'package:flutter/material.dart';

import 'controllers/router.gr.dart';

class BlobgramApp extends StatelessWidget {
  BlobgramApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
