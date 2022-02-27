import 'package:auto_route/auto_route.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalBackButton extends StatelessWidget {
  final StackRouter router;
  ModalBackButton({
    Key? key,
    required BuildContext context,
  })  : router = AutoRouter.of(context),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          router.replaceAll([const HomeRoute()]);
        },
        icon: const Icon(CupertinoIcons.clear));
  }
}
