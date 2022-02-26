import 'package:auto_route/annotations.dart';
import 'package:blobgram/components/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final String postId;
  const PostPage({
    Key? key,
    @PathParam() required this.postId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: PostWidget(postId: postId),
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
