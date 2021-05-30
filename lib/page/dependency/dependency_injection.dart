import 'package:flutter/material.dart';
import 'package:flutter_study_getx/controller/dependency_controller.dart';
import 'package:flutter_study_getx/page/dependency/get_lazy_put.dart';
import 'package:flutter_study_getx/page/dependency/get_put.dart';
import 'package:get/get.dart';

class DependencyInjectionPage extends StatelessWidget {
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
                Get.to(
                  () => GetPutPage(),
                  binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }),
                );
              },
              child: Text('get put'),
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Get.to(
                  () => GetLazyPutPage(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(() => DependencyController());
                  }),
                );
              },
              child: Text('get lazy put'),
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Get.to(
                  () => GetPutPage(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              },
              child: Text('get put async'),
            ),
          ].map((e) => Padding(padding: EdgeInsets.symmetric(vertical: 10), child: e)).toList(),
        ),
      ),
    );
  }
}
