import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final bool newPassword;
  const PasswordField({
    Key? key,
    required this.controller,
    this.newPassword = false,
  }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _hide = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: [
        widget.newPassword ? AutofillHints.newPassword : AutofillHints.password
      ],
      obscureText: _hide,
      decoration: InputDecoration(
          label: const Text('password'),
          suffixIcon: IconButton(
              onPressed: toggleHide,
              icon: Icon(_hide
                  ? CupertinoIcons.eye_slash_fill
                  : CupertinoIcons.eye_fill))),
      controller: widget.controller,
    );
  }

  toggleHide() {
    setState(() {
      _hide = !_hide;
    });
  }
}
