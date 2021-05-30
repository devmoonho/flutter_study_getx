import 'package:flutter/material.dart';
import 'package:flutter_study_getx/controller/dependency_controller.dart';

class GetLazyPutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          color: Colors.amber,
          onPressed: () {
            DependencyController.find.increase();
          },
          child: Text('LazyPut'),
        ),
      ),
    );
  }
}
