import 'package:hive_flutter/hive_flutter.dart';
import 'secure_storage_interface.dart';

class SecureStorage implements ISecureStorage {
  final Box storage;

  SecureStorage(this.storage);

  static Future<SecureStorage> instance() async {
    return SecureStorage(await Hive.openBox('box'));
  }

  @override
  Future<String?> getToken() async {
    return await storage.get('accessToken') as String?;
  }

  @override
  Future<void> saveToken(String token) async {
    await storage.put('accessToken', token);
  }

  @override
  Future<void> cleanToken() async {
    await storage.clear();
  }
}
