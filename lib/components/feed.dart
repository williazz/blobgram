import 'package:flutter/material.dart';

import 'post.dart';
import 'stories.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 15,
      separatorBuilder: (_, index) {
        if (index == 0) return const Divider(height: 0);
        return const Divider(height: 4);
      },
      itemBuilder: (context, index) {
        if (index == 0) return const StoriesPanelWidget();
        return const PostWidget();
      },
    );
  }
}