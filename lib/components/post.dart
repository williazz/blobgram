import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postId = Faker().guid.guid();
    getToPost() {}

    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const PostHeader(),
          Expanded(
              child: Material(
            color: Colors.blue,
            child: InkWell(
              onTap: getToPost,
              child: Center(
                child: Text(
                  postId,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = Faker().internet.userName();

    getToUser() {}

    return AspectRatio(
      aspectRatio: 8 / 1,
      child: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AspectRatio(
                aspectRatio: 1 / 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                      color: Colors.blue,
                      child: InkWell(
                        onTap: getToUser,
                        child: Center(
                          child: Text(
                            username,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(CupertinoIcons.ellipsis, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
