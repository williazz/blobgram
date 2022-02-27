import 'package:auto_route/auto_route.dart';
import 'package:blobgram/auth/components/email.dart';
import 'package:blobgram/auth/components/password.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/material.dart';

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
                  child: EmailField(controller: emailController)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    PasswordField(controller: passwordController),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      TextButton(
                          onPressed: () {},
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
                      AutoRouter.of(context).push(
                          LinkSentRoute(email: 'passwordless@example.com'));
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
