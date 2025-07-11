import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

class WinterSqliteDatabaseProvider {
  String db_name;
  int db_version;
  //use "--#-#"  in sql file to split sessions
  String sql_prepare_schema;

  WinterSqliteDatabaseProvider(
    this.db_name,
    this.db_version,
    this.sql_prepare_schema,
  );

  //function to create or get the database object
  Future<Database> getDatabase() async {
    if (Platform.isWindows || Platform.isLinux) {
      sqfliteFfiInit();
      databaseFactory = databaseFactoryFfi;
    }
    List<String> schemas = sql_prepare_schema.trim().split("--#-#");
    final String db_path = join(await getDatabasesPath(), db_name);
    debugPrint(db_path);
    final Database db = await openDatabase(
      db_path,
      version: db_version,
      onCreate: (db, version) async {
        for (var a in schemas) {
          try {
            await db.execute(a);
          } catch (e) {
            debugPrint(e.toString());
          }
        }
        //print(version.toString() + "->" + a.toString());
        debugPrint("db created");
      },
      //onUpgrade: (db, version, new_version) async {
      //  for (var a in schemas) {
      //    try {
      //      await db.execute(a);
      //    } catch (e) {
      //      print(e);
      //    }
      //  }
      //},
      onConfigure: (Database db) async {
        await db.execute("PRAGMA foreign_keys = 1");
      },
    );
    return db;
  }
}
