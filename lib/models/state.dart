import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/homecontroller.dart';

class LearnState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GetX<HomeController>(
          init: HomeController(),
          builder: (controller) => Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: const Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  controller.counter.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  child: const Icon(
                    Icons.remove,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
