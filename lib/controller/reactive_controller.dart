import 'package:flutter_study_getx/page/home_page.dart';
import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class ReactiveController extends GetxController {
  static ReactiveController get find => Get.find<ReactiveController>();
  RxInt count = 0.obs;
  Rx<double> d = 0.0.obs;
  RxString str = ''.obs;
  Rx<NUM> num = NUM.FIRST.obs;
  Rx<User> user = User(name: 'study', age: 20).obs;
  RxList<String> strList = [''].obs;

  void increase() {
    count++;
    d++;
    str('str');
    num(NUM.SECOND);
    user(User(name: 'update', age: 21));
    user.update((val) {
      val!.name = 'update';
      val.age = 21;
    });

    strList.add('a');
    strList.addAll(['a', 'b']);
    strList.addIf(user.value.name == 'study', 'a');
  }

  // when don't change value, don't update ui
  void putNumber(int i) {
    count(i);
  }

  @override
  void onInit() {
    // init listener
    ever(count, (_) => print('every time'));
    once(count, (_) => print('once'));
    debounce(count, (_) => print('last once'), time: Duration(seconds: 1)); // using for search word
    interval(count, (_) => print('during update every time'), time: Duration(seconds: 1));
    super.onInit();
  }
}
