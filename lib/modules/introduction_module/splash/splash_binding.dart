import 'package:get/get.dart';
import 'package:training_flutter/modules/modules.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
