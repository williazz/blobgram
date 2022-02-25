import 'package:blobgram/components/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  // final String postId;
  const PostScreen({
    Key? key,
    // this.postId = 'blankPost',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const PostWidget(postId: 'faker'),
    );
  }

  AppBar _appBar() => AppBar(
        title: const Text('Post'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.ellipsis)),
        ],
      );
}
