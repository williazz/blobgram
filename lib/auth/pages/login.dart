import 'package:auto_route/auto_route.dart';
import 'package:blobgram/auth/components/login.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () =>
                  AutoRouter.of(context).replaceAll([const HomeRoute()]),
              icon: const Icon(CupertinoIcons.clear)),
          title: const Text('Login'),
          actions: [
            Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ))),
          ]),
      body: const LoginForm(),
    );
  }
}
