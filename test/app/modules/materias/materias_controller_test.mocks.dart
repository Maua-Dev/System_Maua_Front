// Mocks generated by Mockito 5.2.0 from annotations
// in system_maua_front/test/app/modules/materias/materias_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart'
    as _i4;
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart'
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

/// A class which mocks [IMateriasRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIMateriasRepository extends _i1.Mock
    implements _i2.IMateriasRepository {
  MockIMateriasRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.MateriasModel>> getMaterias() =>
      (super.noSuchMethod(Invocation.method(#getMaterias, []),
              returnValue:
                  Future<List<_i4.MateriasModel>>.value(<_i4.MateriasModel>[]))
          as _i3.Future<List<_i4.MateriasModel>>);
}
