import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          PostHeader(),
          Expanded(child: Material(color: Colors.blue)),
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 8 / 1,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Material(color: Colors.blue),
              ),
            ),
            SizedBox(width: 8),
            Icon(CupertinoIcons.ellipsis, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
