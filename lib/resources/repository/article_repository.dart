import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:training_flutter/resources/models/response_model.dart';

part 'article_repository.g.dart';

@RestApi()
abstract class ArticleRepository {
  factory ArticleRepository(Dio dio, {String baseUrl}) = _ArticleRepository;

  @GET('v2/top-headlines')
  Future<ResponseModel> getArticle({
    @Query('sources') String? sources = 'techcrunch',
    @Query('apiKey') String? apiKey = 'a9818c7a3ed3433fbecc7820f3ec65bb',
  });
}
