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
          child: const Text('Go back'),
        ),
      ),
    );
  }

  _home(StackRouter router) {
    if (router.canPopSelfOrChildren) {
      router.pop();
    } else {
      router.replaceAll([const HomeRoute()]);
    }
  }
}
