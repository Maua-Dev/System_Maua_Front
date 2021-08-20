// Mocks generated by Mockito 5.0.10 from annotations
// in system_maua_front/test/app/modules/materias/materias_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart'
    as _i4;
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart'
    as _i7;
import 'package:system_maua_front/app/modules/materias/pages/materias-apresentacao/models/materias_apresentacao_model.dart'
    as _i2;
import 'package:system_maua_front/app/modules/materias/pages/materias-aulas/models/materias_aulas_model.dart'
    as _i3;
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart'
    as _i5;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeMateriasApresentacaoModel extends _i1.Fake
    implements _i2.MateriasApresentacaoModel {}

class _FakeMateriasAulasModel extends _i1.Fake
    implements _i3.MateriasAulasModel {}

class _FakeMateriasModel extends _i1.Fake implements _i4.MateriasModel {}

/// A class which mocks [IMateriasRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIMateriasRepository extends _i1.Mock
    implements _i5.IMateriasRepository {
  MockIMateriasRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i4.MateriasModel>> getMaterias() =>
      (super.noSuchMethod(Invocation.method(#getMaterias, []),
              returnValue:
                  Future<List<_i4.MateriasModel>>.value(<_i4.MateriasModel>[]))
          as _i6.Future<List<_i4.MateriasModel>>);
  @override
  _i6.Future<_i2.MateriasApresentacaoModel> getApresentacao(
          String? codigoMateria) =>
      (super.noSuchMethod(Invocation.method(#getApresentacao, [codigoMateria]),
              returnValue: Future<_i2.MateriasApresentacaoModel>.value(
                  _FakeMateriasApresentacaoModel()))
          as _i6.Future<_i2.MateriasApresentacaoModel>);
  @override
  _i6.Future<List<_i7.ProfessoresModel>> getProfessores(
          String? codigoMateria) =>
      (super.noSuchMethod(Invocation.method(#getProfessores, [codigoMateria]),
              returnValue: Future<List<_i7.ProfessoresModel>>.value(
                  <_i7.ProfessoresModel>[]))
          as _i6.Future<List<_i7.ProfessoresModel>>);
  @override
  _i6.Future<String> getUrlPdf(String? codigoMateria) =>
      (super.noSuchMethod(Invocation.method(#getUrlPdf, [codigoMateria]),
          returnValue: Future<String>.value('')) as _i6.Future<String>);
  @override
  _i6.Future<_i3.MateriasAulasModel> getAula(
          String? codigoMateria, int? idPagina) =>
      (super.noSuchMethod(
              Invocation.method(#getAula, [codigoMateria, idPagina]),
              returnValue: Future<_i3.MateriasAulasModel>.value(
                  _FakeMateriasAulasModel()))
          as _i6.Future<_i3.MateriasAulasModel>);
  @override
  _i6.Future<_i4.MateriasModel> getMateriaEspecifica(String? codigoMateria) =>
      (super.noSuchMethod(
              Invocation.method(#getMateriaEspecifica, [codigoMateria]),
              returnValue:
                  Future<_i4.MateriasModel>.value(_FakeMateriasModel()))
          as _i6.Future<_i4.MateriasModel>);
}
