import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = Faker().internet.userName();
    getToUser() {
      Get.toNamed('/user/$username');
    }

    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const PostHeader(),
          Expanded(
              child: GestureDetector(
            onTap: getToUser,
            child: Material(
                color: Colors.blue,
                child: Center(
                    child: Text(username,
                        style: const TextStyle(color: Colors.white)))),
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
    return AspectRatio(
      aspectRatio: 8 / 1,
      child: GestureDetector(
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
      ),
    );
  }
}
