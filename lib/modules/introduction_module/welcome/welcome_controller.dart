import 'package:get/get.dart';
import 'package:training_flutter/modules/base_module/base_controller.dart';
import 'package:training_flutter/routes/routes.dart';

class WelComeController extends BaseController {
  void onPressedLogin() {
    Get.toNamed(AppRoutes.login);
  }
}
