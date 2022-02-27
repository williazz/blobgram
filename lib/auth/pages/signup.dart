import 'package:auto_route/auto_route.dart';
import 'package:blobgram/auth/components/back.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/material.dart';

import '../components/signup.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: ModalBackButton(context: context),
          title: const Text('Sign Up'),
          actions: [
            Center(
                child: InkWell(
                    onTap: () {
                      AutoRouter.of(context).replace(const LoginRoute());
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                          Text('Log In', style: TextStyle(color: Colors.white)),
                    ))),
          ]),
      body: const Center(child: SignUpWidget()),
    );
  }
}
