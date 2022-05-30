import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/config.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset(AppImages.imgLogo)),
    );
  }
}
