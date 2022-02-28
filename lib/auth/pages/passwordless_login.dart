import 'package:auto_route/auto_route.dart';
import 'package:blobgram/auth/components/back_button.dart';
import 'package:blobgram/auth/components/email.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/material.dart';

class PasswordlessLoginPage extends StatelessWidget {
  const PasswordlessLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Passwordless Login'),
          actions: [ModalBackButton(context: context)]),
      body: EmailForm(onSubmit: () {
        AutoRouter.of(context)
            .push(LinkSentRoute(email: 'passwordless-login@blobgram.com'));
      }),
    );
  }
}
