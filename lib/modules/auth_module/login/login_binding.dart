import 'package:get/get.dart';
import 'package:training_flutter/modules/auth_module/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
