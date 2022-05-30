import 'dart:developer';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

// ignore: prefer_mixin
class AppDio with DioMixin implements Dio {
  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: 'https://newsapi.org/',
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );

    this.options = options;
    interceptors.add(
      InterceptorsWrapper(onRequest: (options, handler) async {
        // options.headers.addAll(await userAgentClientHintsHeader());
        handler.next(options);
      }, onResponse: (response, handle) {
        log('response: ${response.data}');
        handle.next(response);
      }),
    );
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => AppDio._();
}
