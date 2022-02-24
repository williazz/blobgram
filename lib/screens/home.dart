import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/components/feed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: const FeedWidget(),
    );
  }

  AppBar _appBar(BuildContext context) => AppBar(
        title: const Text('Blobgram'),
        centerTitle: false,
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
