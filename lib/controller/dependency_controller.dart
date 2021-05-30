import 'package:get/get.dart';

class DependencyController extends GetxController {
  static DependencyController get find => Get.find<DependencyController>();

  int count = 0;
  void increase() {
    count++;
  }
}
