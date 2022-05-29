import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_flutter/config/constants/app_styles.dart';

import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Splash screen',
          style: styleLargeBold,
        ),
      ),
    );
  }
}
