import 'package:winter/winter.dart';
class {{name}}Dao{
  Database _db=getIt<DatabaseProvider>(instanceName:"{{database_name}}").getDb();
}
