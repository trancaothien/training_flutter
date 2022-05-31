import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:training_flutter/modules/base_module/base_controller.dart';
import 'package:training_flutter/resources/local/local.dart';
import 'package:training_flutter/resources/models/article_model.dart';
import 'package:training_flutter/resources/remote/app_dio.dart';
import 'package:training_flutter/routes/routes.dart';

import '../../../resources/models/response_model.dart';
import '../../../resources/repository/article_repository.dart';

class WelComeController extends BaseController {
  void onPressedLogin() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  void onInit() async {
    setLoading(true);
    ResponseModel response = await getArticle();
    await insertData(response);
    setLoading(false);
    super.onInit();
  }

  Future<ResponseModel> getArticle() async {
    try {
      Dio dio = AppDio.getInstance();
      final articleRepo = ArticleRepository(dio);
      return await articleRepo.getArticle();
    } catch (e) {
      return ResponseModel();
    }
  }

  Future insertData(ResponseModel response) async {
    if (response.articles == null || response.articles!.isEmpty) return;
    List<ArticleModel> articleModel = response.articles!;
    await ArticleProvider.instance.insert(articleModel);
  }
}
