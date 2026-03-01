import 'package:hive_ce/hive.dart';
import 'package:taskflow/core/constants/store_keys.dart';
import '../../domain/user.dart';

class UserStorage {
  static const _userKey = 'user';

  late final Box<User> _box;

  UserStorage() {
    _box = Hive.box<User>(StoreKeys.userBox);
  }

  void save(User user) {
     _box.put(_userKey, user);
  }

  User? read() {
    return _box.get(_userKey);
  }

  void clear() {
    _box.delete(_userKey);
  }
}
