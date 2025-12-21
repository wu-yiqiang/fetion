import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // 数据库文件名
  static const String dbName = "user_management.db";
  // 数据库版本号，用于版本控制和升级
  static const int dbVersion = 1;
  // 数据表名，用于存储用户信息
  static const String tableUsers = "users";
  // 数据表中的用户ID字段名，主键
  static const String columnId = "id";
  // 数据表中的用户姓名字段名
  static const String columnName = "name";
  // 数据表中的用户邮箱字段名，唯一约束
  static const String columnEmail = "email";

  // 私有数据库实例变量，用于存储数据库连接
  Database? _database;

  // 获取数据库实例的公共方法
  // 如果数据库已经初始化，则直接返回；否则初始化数据库并返回
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // 获取数据库存储路径，并打开或创建数据库文件
  Future<Database> _initDatabase() async {
    // 使用 getDatabasesPath 获取设备的数据库存储路径
    String path = join(await getDatabasesPath(), dbName);
    // 打开或创建数据库文件，指定版本号和 onCreate 回调方法
    return await openDatabase(path, version: dbVersion, onCreate: _onCreate);
  }

  // 用于创建数据表结构
  Future<void> _onCreate(Database db, int version) async {
    // 执行 SQL 语句，创建 users 表
    // 表包含三个字段：id（自增主键）、name（非空）、email（非空且唯一）
    await db.execute('''
      CREATE TABLE $tableUsers (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT, // 用户ID，自增主键
        $columnName TEXT NOT NULL, // 用户姓名，非空
        $columnEmail TEXT NOT NULL UNIQUE // 用户邮箱，非空且唯一
      )
    ''');
  }

  // 插入用户数据的方法
  Future<int> insertUser(Map<String, dynamic> user) async {
    // 获取数据库实例
    Database db = await database;
    // 插入数据到 users 表，返回插入的行ID
    return await db.insert(tableUsers, user);
  }

  // 查询所有用户的方法
  Future<List<Map<String, dynamic>>> getAllUsers() async {
    // 获取数据库实例
    Database db = await database;
    // 查询 users 表，返回所有用户数据
    return await db.query(tableUsers);
  }

  // 根据ID查询用户的方法
  Future<Map<String, dynamic>?> getUserById(int id) async {
    // 获取数据库实例
    Database db = await database;
    // 查询 users 表，查找指定ID的用户
    List<Map<String, dynamic>> result = await db.query(
      tableUsers,
      where: '$columnId = ?', // 查询条件
      whereArgs: [id], // 查询参数
    );
    // 如果查询结果不为空，返回第一个结果；否则返回 null
    return result.isNotEmpty ? result.first : null;
  }

  // 更新用户数据的方法
  Future<int> updateUser(Map<String, dynamic> user) async {
    // 获取数据库实例
    Database db = await database;
    // 更新 users 表中的指定用户数据，返回更新的行数
    return await db.update(
      tableUsers,
      user,
      where: '$columnId = ?', // 更新条件
      whereArgs: [user[columnId]], // 更新参数
    );
  }

  // 删除用户的方法
  Future<int> deleteUser(int id) async {
    // 获取数据库实例
    Database db = await database;
    // 删除 users 表中的指定用户，返回删除的行数
    return await db.delete(
      tableUsers,
      where: '$columnId = ?', // 删除条件
      whereArgs: [id], // 删除参数
    );
  }

  // 关闭数据库的方法
  Future<void> closeDatabase() async {
    // 如果数据库实例不为空，则关闭数据库连接
    if (_database != null) {
      await _database!.close();
      _database = null;
    }
  }
}
