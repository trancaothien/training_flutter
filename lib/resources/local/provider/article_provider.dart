import 'dart:convert';
import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:training_flutter/resources/models/models.dart';

import '../database/database_helper.dart';
import 'base_provider.dart';

class ArticleProvider extends BaseProvider<ArticleModel> {
  static final ArticleProvider instance = ArticleProvider._internal();
  ArticleProvider._internal();

  @override
  Future<void> createTable(Batch batch) async {
    batch.execute('''
      CREATE TABLE IF NOT EXISTS $articleTable
        (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          $sourceColumn TEXT,
          $authorColumn TEXT,
          $titleColumn TEXT,
          $descriptionColumn TEXT,
          $urlColumn TEXT,
          $urlToImageColumn TEXT,
          $publishedAtColumn TEXT,
          $contentColumn TEXT
        )
      ''');
  }

  @override
  Future<List<ArticleModel>> selectAll() async {
    return [];
  }

  @override
  Future<ArticleModel> selectOneById(int id) async {
    return ArticleModel();
  }

  @override
  Future<List<int>> insert(List<ArticleModel> data) async {
    final db = await DatabaseHelper.instance.database;
    final ids = <int>[];
    for (var element in data) {
      final map = element.toJson();
      map.remove('id');
      map['source'] = jsonEncode(element.source?.toJson());
      log('sourceChange: ${map.toString()}');
      ids.add(await db.insert(articleTable, map));
    }
    return ids;
  }
}
