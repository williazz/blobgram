import 'package:blobgram/components/feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const FeedWidget(),
    );
  }

  AppBar _appBar() => AppBar(
        title: const Text('Blobgram'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.add_circled)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.chat_bubble_text)),
        ],
      );
}
