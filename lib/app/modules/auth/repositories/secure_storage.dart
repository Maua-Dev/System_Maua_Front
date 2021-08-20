import 'package:hive/hive.dart';

import 'secure_storage_interface.dart';

class SecureStorage implements ISecureStorage {
  final Box storage;

  SecureStorage._(this.storage);

  static Future<SecureStorage> instance() async {
    return SecureStorage._(await Hive.openBox('box'));
  }

  @override
  Future<String?> getToken() async {
    return await storage.get('accessToken') as String?;
  }

  @override
  Future<void> saveToken(String token) async {
    await storage.put('accessToken', token);
  }
}