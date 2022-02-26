import 'package:auto_route/annotations.dart';
import 'package:blobgram/components/feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String username;
  const UserPage({
    Key? key,
    @PathParam() required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(username), actions: [
        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.ellipsis)),
      ]),
      body: const FeedWidget(showStories: false),
    );
  }
}
