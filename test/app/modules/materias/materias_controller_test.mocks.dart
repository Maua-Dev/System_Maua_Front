// Mocks generated by Mockito 5.0.10 from annotations
// in system_maua_front/test/app/modules/materias/materias_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/materias-apresentacao/models/materias_apresentacao_model.dart'
    as _i2;
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart'
    as _i5;
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeMateriasApresentacaoModel extends _i1.Fake
    implements _i2.MateriasApresentacaoModel {}

/// A class which mocks [IMateriasRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIMateriasRepository extends _i1.Mock
    implements _i3.IMateriasRepository {
  MockIMateriasRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i5.MateriasModel>> getMaterias() =>
      (super.noSuchMethod(Invocation.method(#getMaterias, []),
              returnValue:
                  Future<List<_i5.MateriasModel>>.value(<_i5.MateriasModel>[]))
          as _i4.Future<List<_i5.MateriasModel>>);
  @override
  _i4.Future<_i2.MateriasApresentacaoModel> getMateriaEspecifica(
          String? codigoMateria) =>
      (super.noSuchMethod(
              Invocation.method(#getMateriaEspecifica, [codigoMateria]),
              returnValue: Future<_i2.MateriasApresentacaoModel>.value(
                  _FakeMateriasApresentacaoModel()))
          as _i4.Future<_i2.MateriasApresentacaoModel>);
}
