import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'secure_storage.dart';

final secureStorageProvider = Provider<SecureStorage>((ref) {
  return SecureStorageImpl();
});

class SecureStorageImpl implements SecureStorage {
  final _storage = FlutterSecureStorage();

  @override
  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  @override
  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  @override
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  @override
  Future<void> clear() async {
    await _storage.deleteAll();
  }
}
