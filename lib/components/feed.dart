import 'package:flutter/material.dart';

import 'post.dart';
import 'stories.dart';

class FeedWidget extends StatelessWidget {
  final bool showStories;
  final bool getUsernameFromUrl;
  const FeedWidget({
    Key? key,
    this.showStories = true,
    this.getUsernameFromUrl = false,
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
        return PostWidget(getUsernameFromUrl: getUsernameFromUrl);
      },
    );
  }
}
