// Mocks generated by Mockito 5.0.10 from annotations
// in system_maua_front/test/app/modules/help/help-intercambio/oportunidades-abertas/oportunidades_abertas_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/oportunidades_abertas/models/universidade_model.dart'
    as _i4;
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/oportunidades_abertas/repository/i_oportunidade_repository.dart'
    as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [IOportunidadeRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIOportunidadeRepository extends _i1.Mock
    implements _i2.IOportunidadeRepository {
  MockIOportunidadeRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.UniversidadeModel>> getUniversidade() =>
      (super.noSuchMethod(Invocation.method(#getUniversidade, []),
              returnValue: Future<List<_i4.UniversidadeModel>>.value(
                  <_i4.UniversidadeModel>[]))
          as _i3.Future<List<_i4.UniversidadeModel>>);
}
