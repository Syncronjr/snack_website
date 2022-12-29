import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_website/controllers/counterController.dart';
import 'package:snack_website/pages/other.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        (() => SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Clicks: ${counterController.counter.value}"),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(Page2());
                      },
                      child: Text("Open other page"))
                ],
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
