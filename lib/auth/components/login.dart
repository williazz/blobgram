import 'package:auto_route/auto_route.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/material.dart';

import 'clearable_text_field.dart';
import 'password_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      label: 'email',
                      autofillHint: AutofillHints.email,
                      controller: emailController)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    PasswordField(controller: passwordController),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      TextButton(
                          onPressed: () {
                            AutoRouter.of(context)
                                .push(const ForgotPasswordRoute());
                          },
                          child: const Text('Forgot Password?')),
                    ])
                  ])),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      AutoRouter.of(context).replaceAll(const [HomeRoute()]);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Sign In'),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                    onPressed: () {
                      AutoRouter.of(context)
                          .push(const PasswordlessLoginRoute());
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Passwordless Sign In'),
                    )),
              ),
            ]),
      ),
    );
  }
}
