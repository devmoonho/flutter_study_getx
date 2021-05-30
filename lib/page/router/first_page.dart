import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          color: Colors.cyan,
          onPressed: () {
            Get.back();
          },
          child: Text('back'),
        ),
      ),
    );
  }
}
