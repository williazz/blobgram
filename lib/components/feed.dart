import 'package:auto_route/auto_route.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'post.dart';
import 'stories.dart';

class FeedWidget extends StatelessWidget {
  final bool showStories;
  const FeedWidget({
    Key? key,
    this.showStories = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 15,
      separatorBuilder: (_, index) {
        if (index == 0) return const Divider(height: 0);
        return const Divider(height: 4);
      },
      itemBuilder: (context, index) {
        if (showStories && index == 0) return const StoriesPanelWidget();
        if (index == 1) {
          return ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('error');
              },
              child: const Text('Go to error page'));
        }
        final postId = Faker().food.restaurant();
        return PostWidget(postId: postId);
      },
    );
  }
}
