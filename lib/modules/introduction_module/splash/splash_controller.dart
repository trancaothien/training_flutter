import 'package:get/get.dart';
import 'package:training_flutter/modules/base_module/base_controller.dart';
import 'package:training_flutter/resources/local/local.dart';
import 'package:training_flutter/routes/routes.dart';

class SplashController extends BaseController {
  @override
  void onInit() async {
    await DatabaseHelper.instance.database;
    Get.toNamed(AppRoutes.welcome);
    super.onInit();
  }
}
