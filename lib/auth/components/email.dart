import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController controller;
  const EmailField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: const [AutofillHints.email],
      decoration: InputDecoration(
          label: const Text('email'),
          suffixIcon: IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(CupertinoIcons.clear_circled_solid))),
      controller: controller,
    );
  }
}
