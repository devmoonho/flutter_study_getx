import 'package:flutter/material.dart';
import 'package:flutter_study_getx/app_router.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Get.toNamed(firstPage);
              },
              child: Text('first buttton'),
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Get.offNamed(secondPage);
              },
              child: Text('second buttton'),
            ),
          ],
        ),
      ),
    );
  }
}
