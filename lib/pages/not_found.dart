import 'package:auto_route/auto_route.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('404 Not Found')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _home(router),
          child: const Text('Go home'),
        ),
      ),
    );
  }

  _home(StackRouter router) {
    router.replaceAll([const HomeRoute()]);
  }
}
