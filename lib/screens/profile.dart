import 'package:blobgram/controllers/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final username = Get.parameters[Param[Params.username]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username!),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ellipsis),
          ),
        ],
      ),
    );
  }
}
