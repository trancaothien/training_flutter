import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_flutter/common/widgets/widgets.dart';
import 'package:training_flutter/modules/auth_module/login/login_controller.dart';

import '../../../config/config.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(AppImages.imgBgLogin),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'first_name'.tr,
                    style: styleMediumBold,
                  ),
                  WidgetInput(
                    hint: 'first name',
                  ),
                  Spacer(),
                  InkWell(
                    onTap: controller.onPressedButton,
                    child: Container(
                      width: Get.width,
                      height: 56,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'start_ordering'.tr,
                          style: styleSmall.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
