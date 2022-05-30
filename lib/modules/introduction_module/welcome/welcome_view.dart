import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:training_flutter/config/constants/app_colors.dart';
import 'package:training_flutter/config/constants/app_images.dart';
import 'package:training_flutter/config/constants/app_styles.dart';
import 'package:training_flutter/modules/introduction_module/welcome/welcome_binding.dart';
import 'package:training_flutter/modules/introduction_module/welcome/welcome_controller.dart';

class WelcomeView extends GetView<WelComeController> {
  const WelcomeView({Key? key}) : super(key: key);

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
                Image.asset(AppImages.imgBg),
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
                    'welcome_title'.tr,
                    style: styleMediumBold,
                  ),
                  Text(
                    'welcome_description'.tr,
                    style: styleSmall,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: controller.onPressedLogin,
                    child: Container(
                      width: Get.width,
                      height: 56,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'Let’s Continue',
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
