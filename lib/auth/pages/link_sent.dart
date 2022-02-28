import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../components/back_button.dart';

class LinkSentPage extends StatelessWidget {
  final String email;
  const LinkSentPage({
    Key? key,
    @PathParam() required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Link Sent'),
          actions: [ModalBackButton(context: context)]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Check your mail',
                  style: Theme.of(context).textTheme.headline5)),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(text: 'We sent a link to ', children: [
                TextSpan(
                    text: email,
                    style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue)),
                const TextSpan(
                    text:
                        '\n\nIf no email was received within 5 minutes, please verify that your email was entered correctly and try again'),
              ]))),
        ]),
      ),
    );
  }
}
