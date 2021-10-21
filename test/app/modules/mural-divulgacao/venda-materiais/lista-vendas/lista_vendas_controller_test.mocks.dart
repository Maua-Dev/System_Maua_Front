// Mocks generated by Mockito 5.0.16 from annotations
// in system_maua_front/test/app/modules/mural-divulgacao/venda-materiais/lista-vendas/lista_vendas_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart'
    as _i5;
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/models/informacao_material_model.dart'
    as _i4;
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/repositories/mural_vendas_materiais_repository_interface.dart'
    as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [IMuralVendasMateriaisRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIMuralVendasMateriaisRepository extends _i1.Mock
    implements _i2.IMuralVendasMateriaisRepository {
  MockIMuralVendasMateriaisRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.InformacaoMaterialModel>> getVendas(
          _i5.MateriaisEnum? idMaterial) =>
      (super.noSuchMethod(Invocation.method(#getVendas, [idMaterial]),
              returnValue: Future<List<_i4.InformacaoMaterialModel>>.value(
                  <_i4.InformacaoMaterialModel>[]))
          as _i3.Future<List<_i4.InformacaoMaterialModel>>);
  @override
  String toString() => super.toString();
}
