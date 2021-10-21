// Mocks generated by Mockito 5.0.15 from annotations
// in system_maua_front/test/app/modules/help/help-softwares/help_softwares_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/help/pages/help-softwares/models/softwares_model.dart'
    as _i4;
import 'package:system_maua_front/app/modules/help/pages/help-softwares/repositories/help_softwares_repository_interface.dart'
    as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [IHelpSoftwaresRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIHelpSoftwaresRepository extends _i1.Mock
    implements _i2.IHelpSoftwaresRepository {
  MockIHelpSoftwaresRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.SoftwaresModel>> getInformacaoSoftwares() =>
      (super.noSuchMethod(Invocation.method(#getInformacaoSoftwares, []),
          returnValue: Future<List<_i4.SoftwaresModel>>.value(
              <_i4.SoftwaresModel>[])) as _i3.Future<List<_i4.SoftwaresModel>>);
  @override
  String toString() => super.toString();
}
