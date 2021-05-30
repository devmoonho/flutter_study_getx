import 'package:flutter/material.dart';
import 'package:flutter_study_getx/app_router.dart';
import 'package:flutter_study_getx/page/home_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Study Getx',
      home: HomePage(),
      getPages: appRouter,
    );
  }
}
