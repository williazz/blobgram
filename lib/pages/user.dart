import 'package:auto_route/auto_route.dart';
import 'package:blobgram/components/feed.dart';
import 'package:blobgram/controllers/router.gr.dart';
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
        Center(
            child: TextButton(
                onPressed: () => context.router.push(const AuthRouter()),
                child: const Text('Login',
                    style: TextStyle(color: Colors.white)))),
      ]),
      body: const FeedWidget(showStories: false),
    );
  }
}
