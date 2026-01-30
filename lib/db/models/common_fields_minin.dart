import 'package:realm/realm.dart';

mixin CommonFieldsMinin {
  @PrimaryKey()
  late String id;
  @Indexed()
  late bool isDeleted = false;
  late DateTime createdAt = DateTime.now();
  late DateTime updatedAt = DateTime.now();
}
