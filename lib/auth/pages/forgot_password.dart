import 'package:auto_route/auto_route.dart';
import 'package:blobgram/auth/components/back_button.dart';
import 'package:blobgram/auth/components/email.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          title: const Text('Forgot Password'),
          actions: [ModalBackButton(context: context)]),
      body: EmailForm(
          emailController: emailController,
          submitText: 'Recover Password',
          onSubmit: () {
            AutoRouter.of(context)
                .push(LinkSentRoute(email: emailController.text));
          }),
    );
  }
}
