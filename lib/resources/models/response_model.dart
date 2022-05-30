import 'package:json_annotation/json_annotation.dart';
import 'package:training_flutter/resources/models/article_model.dart';

part 'response_model.g.dart';

@JsonSerializable()
class ResponseModel {
  String? status;
  int? totalResults;
  List<ArticleModel>? articles;

  ResponseModel({this.status, this.totalResults, this.articles});

  factory ResponseModel.fromJson(dynamic json) => _$ResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);
}
