import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:training_flutter/resources/local/local.dart';

class DatabaseHelper {
  static const _databaseVersion = 4;
  static const _databaseName = 'SqliteDemo.db';

  // only have a single app-wide reference to the database
  static Database? _database;

  // make this a singleton class
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    log('DB INIT SUCCESSFULLY');
    return _database!;
  }

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
    String path = join(await getDatabasePath(), _databaseName);
    return await openDatabase(path, version: _databaseVersion,
        onCreate: (db, version) async {
      final batch = db.batch();
      ArticleProvider.instance.createTable(batch);
      await batch.commit(noResult: true);
    }, onUpgrade: (Database db, int oldVersion, int newVersion) async {});
  }

  // get path location database
  static Future<String> getDatabasePath() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _databaseName);
    return path;
  }

  //delete
  static Future deleteDB() async {
    String path = await getDatabasePath();
    log('DELETED DB $path');
    await deleteDatabase(path);
    log('DELETED DB RESULT');
  }

  // close
  Future closeDB() async {
    // Close the database
    await _database?.close();
  }
}
