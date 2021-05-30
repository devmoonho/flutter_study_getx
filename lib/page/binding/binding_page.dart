import 'package:flutter/material.dart';
import 'package:flutter_study_getx/controller/reactive_controller.dart';
import 'package:get/get.dart';

class BindingPage extends GetView<ReactiveController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${controller.count}',
                style: TextStyle(fontSize: 30),
              ),
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                controller.increase();
              },
              child: Text('+'),
            )
          ],
        ),
      ),
    );
  }
}
