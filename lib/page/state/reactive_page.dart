import 'package:flutter/material.dart';
import 'package:flutter_study_getx/controller/reactive_controller.dart';
import 'package:get/get.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${ReactiveController.find.count.value}',
                style: TextStyle(fontSize: 30),
              ),
            ),
            MaterialButton(
              color: Colors.cyan,
              onPressed: () {
                ReactiveController.find.increase();
              },
              child: Text(
                '+',
                style: TextStyle(fontSize: 20),
              ),
            ),
            MaterialButton(
              color: Colors.cyan,
              onPressed: () {
                ReactiveController.find.putNumber(5);
              },
              child: Text(
                'defalut 5',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
