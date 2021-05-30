import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('arguments - id : ${Get.parameters['uid']} '),
            Text('arguments - name : ${Get.parameters['name']} '),
            Text('arguments - age : ${Get.parameters['age']} '),
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
