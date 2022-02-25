import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'post.dart';
import 'stories.dart';

class FeedWidget extends StatelessWidget {
  final bool showStories;
  const FeedWidget({Key? key, this.showStories = true}) : super(key: key);

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
        final postId = Faker().guid.guid();
        return PostWidget(postId: postId);
      },
    );
  }
}
