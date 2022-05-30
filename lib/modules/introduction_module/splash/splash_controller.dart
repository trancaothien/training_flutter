import 'package:get/get.dart';
import 'package:training_flutter/modules/base_module/base_controller.dart';
import 'package:training_flutter/routes/routes.dart';

class SplashController extends BaseController {
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.toNamed(AppRoutes.welcome);
    super.onInit();
  }
}
