import 'package:get/get.dart';
import 'package:training_flutter/modules/introduction_module/welcome/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WelComeController());
  }
}
