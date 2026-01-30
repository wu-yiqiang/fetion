import 'package:realm/realm.dart';
// part 'notice.model.realm.dart';

@RealmModel()
class _Notice {
  @PrimaryKey()
  late String id;
  @Indexed()
  late String fromUserId;
  late String content;
}
