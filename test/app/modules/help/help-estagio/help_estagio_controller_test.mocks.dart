// Mocks generated by Mockito 5.0.16 from annotations
// in system_maua_front/test/app/modules/help/help-estagio/help_estagio_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_model.dart'
    as _i4;
import 'package:system_maua_front/app/modules/help/pages/help-estagio/repositories/help_estagio_repository_interface.dart'
    as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [IHelpEstagioRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIHelpEstagioRepository extends _i1.Mock
    implements _i2.IHelpEstagioRepository {
  MockIHelpEstagioRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.HelpEstagioModel>> getEstagio() => (super.noSuchMethod(
      Invocation.method(#getEstagio, []),
      returnValue: Future<List<_i4.HelpEstagioModel>>.value(
          <_i4.HelpEstagioModel>[])) as _i3.Future<List<_i4.HelpEstagioModel>>);
  @override
  String toString() => super.toString();
}
