import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:training_flutter/modules/modules.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
