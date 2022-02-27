import 'package:auto_route/auto_route.dart';

import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/material.dart';

import 'clearable_text_field.dart';
import 'password_field.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return AutofillGroup(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClearableTextField(
                      label: 'name',
                      autofillHint: AutofillHints.name,
                      controller: nameController)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClearableTextField(
                      label: 'email',
                      autofillHint: AutofillHints.email,
                      controller: emailController)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PasswordField(controller: passwordController)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      AutoRouter.of(context)
                          .push(LinkSentRoute(email: 'signup@example.com'));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Continue'),
                    )),
              ),
            ]),
      ),
    );
  }
}
