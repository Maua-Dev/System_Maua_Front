// Mocks generated by Mockito 5.1.0 from annotations
// in system_maua_front/test/app/modules/notas/atingir-metas/atingir_metas_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/models/materia_model.dart'
    as _i2;
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/repositories/atingir_metas_repository_interface.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeMateriaModel_0 extends _i1.Fake implements _i2.MateriaModel {}

/// A class which mocks [IAtingirMetasRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAtingirMetasRepository extends _i1.Mock
    implements _i3.IAtingirMetasRepository {
  MockIAtingirMetasRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.MateriaModel> getMateria() => (super.noSuchMethod(
          Invocation.method(#getMateria, []),
          returnValue: Future<_i2.MateriaModel>.value(_FakeMateriaModel_0()))
      as _i4.Future<_i2.MateriaModel>);
  @override
  _i4.Future<_i2.MateriaModel> getNotasCalculadas() => (super.noSuchMethod(
          Invocation.method(#getNotasCalculadas, []),
          returnValue: Future<_i2.MateriaModel>.value(_FakeMateriaModel_0()))
      as _i4.Future<_i2.MateriaModel>);
}
