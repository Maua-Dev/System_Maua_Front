import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/shared/auth/repositories/auth_repository.dart';

void main() {
  late AuthRepository repository;

  setUpAll(() {
    repository = AuthRepository();
  });
}
