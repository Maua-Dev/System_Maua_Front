// Mocks generated by Mockito 5.0.16 from annotations
// in system_maua_front/test/app/modules/notas/estatisticas_notas/estatisticas_notas_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/dados_grafico_de_barras_model.dart'
    as _i2;
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/estatisticas_medias_model.dart'
    as _i3;
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/repositories/estatisticas_repository_interface.dart'
    as _i4;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeDadosGraficoDeBarrasModel_0 extends _i1.Fake
    implements _i2.DadosGraficoDeBarrasModel {}

class _FakeEstatisticasMediasModel_1 extends _i1.Fake
    implements _i3.EstatisticasMediasModel {}

/// A class which mocks [IEstatisticasRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIEstatisticasRepository extends _i1.Mock
    implements _i4.IEstatisticasRepository {
  MockIEstatisticasRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.DadosGraficoDeBarrasModel> getDadosGraficoDeBarras() =>
      (super.noSuchMethod(Invocation.method(#getDadosGraficoDeBarras, []),
              returnValue: Future<_i2.DadosGraficoDeBarrasModel>.value(
                  _FakeDadosGraficoDeBarrasModel_0()))
          as _i5.Future<_i2.DadosGraficoDeBarrasModel>);
  @override
  _i5.Future<_i3.EstatisticasMediasModel> getEstatisticasMedias() =>
      (super.noSuchMethod(Invocation.method(#getEstatisticasMedias, []),
              returnValue: Future<_i3.EstatisticasMediasModel>.value(
                  _FakeEstatisticasMediasModel_1()))
          as _i5.Future<_i3.EstatisticasMediasModel>);
  @override
  String toString() => super.toString();
}
