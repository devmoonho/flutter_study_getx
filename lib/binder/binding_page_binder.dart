import 'package:flutter_study_getx/controller/reactive_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class BindingPageBinder implements Bindings {
  @override
  void dependencies() {
    Get.put(ReactiveController());
  }
}
