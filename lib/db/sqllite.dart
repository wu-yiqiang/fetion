import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // 数据库文件名
  static const String dbName = "fetion.db";
  // 数据库版本号，用于版本控制和升级
  static const int dbVersion = 1;
  // 数据表名，用于存储本地化数据
  static const String tableLocalization = "localization";
  // 数据表中的键字段名
  static const String columnKey = "key";
  // 数据表中的值字段名
  static const String columnValue = "value";

  // 私有数据库实例变量，用于存储数据库连接
  Database? _database;

  // 如果数据库已经初始化，则直接返回；否则初始化数据库并返回
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // 初始化数据库的方法
  Future<Database> _initDatabase() async {
    // 获取设备的数据库存储路径
    String path = join(await getDatabasesPath(), dbName);
    // 打开或创建数据库文件
    // 如果数据库不存在，则会调用 onCreate 回调方法来创建表
    return await openDatabase(path, version: dbVersion, onCreate: _onCreate);
  }


  Future<void> _onCreate(Database db, int version) async {
    // 执行 SQL 语句，创建 localization 表
    // 表包含两个字段：key（主键，唯一）和 value
    await db.execute('''
      CREATE TABLE $tableLocalization (
        $columnKey TEXT PRIMARY KEY, // 键字段，作为主键
        $columnValue TEXT // 值字段
      )
    ''');
  }

  
}
