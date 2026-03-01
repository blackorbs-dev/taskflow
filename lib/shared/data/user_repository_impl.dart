import 'package:taskflow/shared/domain/user.dart';
import '../domain/user_repository.dart';
import 'local/user_storage.dart';

class UserRepositoryImpl extends UserRepository{

  final UserStorage _userStorage;

  UserRepositoryImpl(this._userStorage);

  @override
  User? getUser() => _userStorage.read();
}