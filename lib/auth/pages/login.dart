import 'package:auto_route/auto_route.dart';
import 'package:blobgram/auth/components/login.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/material.dart';

import '../components/back.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: ModalBackButton(context: context),
          title: const Text('Login'),
          actions: [
            Center(
                child: InkWell(
                    onTap: () {
                      AutoRouter.of(context).replace(const SignupRoute());
                    },
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Colors.white),
                        )))),
          ]),
      body: const LoginForm(),
    );
  }
}
