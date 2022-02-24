import 'package:flutter/material.dart';

class StoriesPanelWidget extends StatelessWidget {
  const StoriesPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.separated(
          itemCount: 30,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const StoryWidget(),
          separatorBuilder: (_, __) => const SizedBox(width: 10),
        ),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2 / 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            AspectRatio(
                aspectRatio: 1 / 1,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue))),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Material(color: Colors.blue))),
          ],
        ));
  }
}
