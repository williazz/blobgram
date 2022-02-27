import 'package:blobgram/auth/components/name.dart';
import 'package:flutter/material.dart';

import 'email.dart';
import 'password.dart';

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
                  child: NameField(controller: nameController)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EmailField(controller: emailController)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PasswordField(controller: passwordController)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
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
