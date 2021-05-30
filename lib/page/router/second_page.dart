import 'package:flutter/material.dart';
import 'package:flutter_study_getx/app_router.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          color: Colors.cyan,
          onPressed: () {
            /** reomve current page and go to specific page */
            Get.offNamed(rootPage);
          },
          child: Text('root'),
        ),
      ),
    );
  }
}
