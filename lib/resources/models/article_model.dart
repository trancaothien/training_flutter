import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

const String articleTable = 'article';
const String sourceColumn = 'source';
const String authorColumn = 'author';
const String titleColumn = 'title';
const String descriptionColumn = 'description';
const String urlColumn = 'url';
const String urlToImageColumn = 'urlToImage';
const String publishedAtColumn = 'publishedAt';
const String contentColumn = 'content';

@JsonSerializable()
class ArticleModel {
  int? id;
  SourceModel? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
  ArticleModel({
    this.id,
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
