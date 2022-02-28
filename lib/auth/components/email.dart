import 'package:flutter/material.dart';

import 'clearable_text_field.dart';

class EmailForm extends StatelessWidget {
  final void Function() onSubmit;
  const EmailForm({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

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
                child: ElevatedButton(
                    onPressed: onSubmit,
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
