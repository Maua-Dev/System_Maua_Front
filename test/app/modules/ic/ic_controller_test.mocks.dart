// Mocks generated by Mockito 5.0.10 from annotations
// in system_maua_front/test/app/modules/ic/ic_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/ic/models/ic_model.dart' as _i4;
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository_interface.dart'
    as _i2;
import 'package:system_maua_front/app/shared/enumerates/tronco_enum.dart'
    as _i5;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [IIcRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIIcRepository extends _i1.Mock implements _i2.IIcRepository {
  MockIIcRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.IcModel>> getDadosTronco(_i5.TroncoEnum? tronco) =>
      (super.noSuchMethod(Invocation.method(#getDadosTronco, [tronco]),
              returnValue: Future<List<_i4.IcModel>>.value(<_i4.IcModel>[]))
          as _i3.Future<List<_i4.IcModel>>);
}
