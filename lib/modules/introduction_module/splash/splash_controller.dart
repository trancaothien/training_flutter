import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:training_flutter/modules/base_module/base_controller.dart';
import 'package:training_flutter/resources/models/response_model.dart';
import 'package:training_flutter/resources/repository/article_repository.dart';
import 'package:training_flutter/routes/routes.dart';

import '../../../resources/remote/app_dio.dart';

class SplashController extends BaseController {
  @override
  void onInit() async {
    // await Future.delayed(const Duration(seconds: 3));
    // Get.toNamed(AppRoutes.welcome);
    await getArticle();
    super.onInit();
  }

  Future getArticle() async {
    Dio dio = AppDio.getInstance();
    final articleRepo = ArticleRepository(dio);
    ResponseModel value = await articleRepo.getArticle();
    log('response: ${value.toJson()}');
  }
}
