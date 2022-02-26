import 'package:flutter/material.dart';

import 'user.dart';

class YouPage extends StatelessWidget {
  const YouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserPage(username: 'You', key: key);
  }
}
