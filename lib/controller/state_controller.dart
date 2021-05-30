import 'package:get/get.dart';

class StateController extends GetxController {
  static StateController get find => Get.find<StateController>();

  int count = 0;

  void increase(String id) {
    count++;
    update([id]);
  }
}
