import 'package:flutter/material.dart';
import 'package:flutter_study_getx/page/home_page.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('arguments - name: ${Get.arguments['name']} / age: ${Get.arguments['age']}'),
            Text('arguments - name: ${(Get.arguments as User).name} / age: ${(Get.arguments as User).age}'),
            MaterialButton(
              color: Colors.cyan,
              onPressed: () {
                Get.back();
              },
              child: Text('back'),
            )
          ],
        ),
      ),
    );
  }
}
