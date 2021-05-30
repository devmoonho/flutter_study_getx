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
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                // Get.toNamed(nextPage, arguments: {'name': 'study', 'age': 20});
                Get.toNamed(nextPage, arguments: User(name: 'study', age: 20));
              },
              child: Text('pass arguments'),
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Get.toNamed('$userPage/1234?name=study&age=20');
              },
              child: Text('pass parameters'),
            ),
            MaterialButton(
              color: Colors.cyan,
              onPressed: () {
                Get.toNamed(statePage);
              },
              child: Text('state'),
            ),
            MaterialButton(
              color: Colors.cyan,
              onPressed: () {
                Get.toNamed(reactivePage);
              },
              child: Text('reactive'),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String? name;
  int? age;

  User({this.name, this.age});
}
