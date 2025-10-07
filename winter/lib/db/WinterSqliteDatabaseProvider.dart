import 'package:flutter/services.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:winter/winter.dart';

class WinterSqliteDatabaseProvider {
  String db_name;
  int db_version;
  //use "--#-#"  in sql file to split sessions
  List<String> sql_files_in_order;
  Database? _db = null;
  WinterSqliteDatabaseProvider(
    this.db_name,
    this.db_version,
    this.sql_files_in_order,
  );

  //function to create or get the database object
  Future<void> createDb() async {
    if (_db == null) {
      if (Platform.isWindows || Platform.isLinux) {
        sqfliteFfiInit();
        databaseFactory = databaseFactoryFfi;
      }

      final String db_path = join(await getDatabasesPath(), db_name);
      debugPrint(db_path);
      _db = await openDatabase(
        db_path,
        version: db_version,
        onCreate: (db, version) async {
          String tmp = "";
          for (var a in sql_files_in_order) {
            String tmp1 = await rootBundle.loadString(a);
            tmp += "--#-# $tmp1 --#-#";
          }
          List<String> schemas = tmp.split("--#-#");
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
    }
  }

  Database getDb() {
    if (_db != null) {
      return _db!;
    } else {
      throw "$db_name database has not been initialized!";
    }
  }

  void backupDatabase(String backupPath) {
    File(getDb().path).copySync(backupPath);
  }
}
