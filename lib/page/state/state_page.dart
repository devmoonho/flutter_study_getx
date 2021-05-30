import 'package:flutter/material.dart';
import 'package:flutter_study_getx/controller/state_controller.dart';
import 'package:get/get.dart';

class StatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(StateController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<StateController>(
              id: 'first',
              builder: (controller) {
                return Text(
                  '${controller.count}',
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
            GetBuilder<StateController>(
              id: 'second',
              builder: (controller) {
                return Text(
                  '${controller.count}',
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                // Get.find<StateController>().increase();
                _button('first');
              },
              child: Text(
                '+',
                style: TextStyle(fontSize: 20),
              ),
            ),
            MaterialButton(
              color: Colors.cyan,
              onPressed: () {
                // Get.find<StateController>().increase();
                _button('second');
              },
              child: Text(
                '+',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _button(String id) {
    StateController.find.increase(id);
  }
}
