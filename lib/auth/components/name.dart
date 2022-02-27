import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final TextEditingController controller;
  const NameField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(label: Text('name')),
      controller: controller,
    );
  }
}
