import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  SourceModel? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
  ArticleModel({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.content,
    this.publishedAt,
  });

  factory ArticleModel.fromJson(dynamic json) => _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}

@JsonSerializable()
class SourceModel {
  String? id;
  String? name;
  SourceModel({this.id, this.name});

  factory SourceModel.fromJson(dynamic json) => _$SourceModelFromJson(json);
  Map<String, dynamic> toJson() => _$SourceModelToJson(this);
}
