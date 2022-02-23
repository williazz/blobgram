import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class CounterController extends GetxController {
  CounterController() : super();
  var count = 0.obs;
  increment() => count++;
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Center(child: Obx(() => Text('Clicked ${_controller.count} times'))),
      floatingActionButton: FloatingActionButton(
        onPressed: _controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
