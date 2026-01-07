import 'package:fetion/common/const.dart';
import 'package:realm/realm.dart';
import './models/user.model.dart';

/// 数据库管理器类
/// 负责管理 Realm 数据库的初始化、配置和生命周期
class RealmInstance {
  /// 单例实例
  static RealmInstance? _instance;
  
  /// Realm 数据库实例
  late final Realm _realm;

  /// 私有构造函数，用于实现单例模式
  RealmInstance._() {
    final config = Configuration.local(
      /// 定义数据库中的模型架构
      [User.schema],
      
      /// 设置数据库版本号，用于数据库升级
      schemaVersion: DataBaseVersion,
      
      /// 数据库版本迁移回调函数
      migrationCallback: (migration, oldSchemaVersion) {
        // 例如：添加新字段、修改字段类型、删除字段等
        print('从版本 $oldSchemaVersion 升级到版本 1');
      },
    );
    
    /// 创建 Realm 数据库实例
    _realm = Realm(config);
    // 数据文件路径
    String dbPath = config.path;
    print('数据库路径: $dbPath');
  }

  /// 获取数据库管理器单例实例
  static Future<RealmInstance> getInstance() async {
    /// 如果实例不存在，则创建新实例
    _instance ??= RealmInstance._();
    return _instance!;
  }

  /// 获取 Realm 数据库实例
  Realm get realm => _realm;

  /// 关闭数据库连接
  void close() {
    _realm.close();
  }
}
