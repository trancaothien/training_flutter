import 'package:sqflite/sqlite_api.dart';

abstract class BaseProvider<T> {
  Future<void> createTable(Batch batch);
  Future<List<T>> selectAll();
  Future<T> selectOneById(int id);
  Future<List<int>> insert(List<T> data);
}
