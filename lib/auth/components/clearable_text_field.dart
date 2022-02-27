import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClearableTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String autofillHint;
  const ClearableTextField({
    Key? key,
    required this.controller,
    required this.label,
    required this.autofillHint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: [autofillHint],
      decoration: InputDecoration(
          label: Text(label),
          suffixIcon: IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(CupertinoIcons.clear_circled_solid))),
      controller: controller,
    );
  }
}
