// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ArticleRepository implements ArticleRepository {
  _ArticleRepository(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponseModel> getArticle(
      {sources = 'techcrunch',
      apiKey = 'a9818c7a3ed3433fbecc7820f3ec65bb'}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'sources': sources,
      r'apiKey': apiKey
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'v2/top-headlines',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
