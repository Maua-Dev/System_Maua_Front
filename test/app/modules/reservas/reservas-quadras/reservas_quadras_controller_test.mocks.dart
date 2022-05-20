// Mocks generated by Mockito 5.2.0 from annotations
// in system_maua_front/test/app/modules/reservas/reservas-quadras/reservas_quadras_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/reservas/models/reservas_model.dart'
    as _i4;
import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/repositories/reservas_quadras_repository_interface.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [IReservasQuadrasRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIReservasQuadrasRepository extends _i1.Mock
    implements _i2.IReservasQuadrasRepository {
  MockIReservasQuadrasRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.ReservasQuadraModel>> retornaListaQuadras() =>
      (super.noSuchMethod(Invocation.method(#retornaListaQuadras, []),
              returnValue: Future<List<_i4.ReservasQuadraModel>>.value(
                  <_i4.ReservasQuadraModel>[]))
          as _i3.Future<List<_i4.ReservasQuadraModel>>);
}
