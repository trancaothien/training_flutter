import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:training_flutter/modules/auth_module/auth_module.dart';
import 'package:training_flutter/modules/introduction_module/welcome/welcome.dart';
import 'package:training_flutter/modules/modules.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
