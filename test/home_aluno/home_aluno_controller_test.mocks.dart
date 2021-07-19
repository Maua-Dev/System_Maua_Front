// Mocks generated by Mockito 5.0.10 from annotations
// in system_maua_front/test/home_aluno/home_aluno_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/home/repositories/home_aluno_repository_interface.dart'
    as _i4;
import 'package:system_maua_front/app/shared/models/aluno_model.dart' as _i2;
import 'package:system_maua_front/app/shared/models/aula_model.dart' as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeAlunoModel extends _i1.Fake implements _i2.AlunoModel {}

class _FakeAulaModel extends _i1.Fake implements _i3.AulaModel {}

/// A class which mocks [IHomeAlunoRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIHomeAlunoRepository extends _i1.Mock
    implements _i4.IHomeAlunoRepository {
  MockIHomeAlunoRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.AlunoModel> getAluno() =>
      (super.noSuchMethod(Invocation.method(#getAluno, []),
              returnValue: Future<_i2.AlunoModel>.value(_FakeAlunoModel()))
          as _i5.Future<_i2.AlunoModel>);
  @override
  _i5.Future<_i3.AulaModel> getAula() =>
      (super.noSuchMethod(Invocation.method(#getAula, []),
              returnValue: Future<_i3.AulaModel>.value(_FakeAulaModel()))
          as _i5.Future<_i3.AulaModel>);
}
