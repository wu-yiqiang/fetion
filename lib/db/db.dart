import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // 数据库文件名
  static const String dbName = "localization.db";
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

  // 保存本地化数据的方法
  Future<void> saveLocalization(String key, String value) async {
    // 获取数据库实例
    Database db = await database;
    // 插入数据到 localization 表
    // 如果 key 已存在，则使用 ConflictAlgorithm.replace 策略替换原有数据
    await db.insert(tableLocalization, {
      columnKey: key,
      columnValue: value,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // 获取本地化数据的方法
  Future<String?> getLocalization(String key) async {
    // 获取数据库实例
    Database db = await database;
    // 查询 localization 表，查找指定 key 的数据
    List<Map<String, dynamic>> result = await db.query(
      tableLocalization,
      where: '$columnKey = ?',
      whereArgs: [key],
    );
    // 如果查询结果不为空，返回 value 字段的值；否则返回 null
    return result.isNotEmpty ? result.first[columnValue] as String? : null;
  }

  // 移除本地化数据的方法
  Future<void> removeLocalization(String key) async {
    // 获取数据库实例
    Database db = await database;
    // 从 localization 表中删除指定 key 的数据
    await db.delete(
      tableLocalization,
      where: '$columnKey = ?',
      whereArgs: [key],
    );
  }

  // 判断是否存在指定 key 的本地化数据的方法
  Future<bool> hasLocalization(String key) async {
    // 获取数据库实例
    Database db = await database;
    // 查询localization表，查找指定key的数据
    List<Map<String, dynamic>> result = await db.query(
      tableLocalization,
      where: '$columnKey = ?',
      whereArgs: [key],
    );
    // 如果查询结果不为空，返回 true；否则返回 false
    return result.isNotEmpty;
  }
}
