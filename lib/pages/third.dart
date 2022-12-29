import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_website/controllers/counterController.dart';

class Page3 extends StatelessWidget {
  Page3({super.key});

  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Screen was clicked ${_counterController.counter.value} times"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Open previous page")),
          ],
        ),
      ),
    );
  }
}
