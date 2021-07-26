// Mocks generated by Mockito 5.0.10 from annotations
// in system_maua_front/test/app/modules/notas-aluno/notas_aluno_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/notas-aluno/models/materia_model.dart'
    as _i2;
import 'package:system_maua_front/app/modules/notas-aluno/repositories/notas_aluno_repository_interface.dart'
    as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeMateriaModel extends _i1.Fake implements _i2.MateriaModel {}

/// A class which mocks [INotasAlunoRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockINotasAlunoRepository extends _i1.Mock
    implements _i3.INotasAlunoRepository {
  MockINotasAlunoRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.MateriaModel> getMateria() =>
      (super.noSuchMethod(Invocation.method(#getMateria, []),
              returnValue: Future<_i2.MateriaModel>.value(_FakeMateriaModel()))
          as _i4.Future<_i2.MateriaModel>);
}