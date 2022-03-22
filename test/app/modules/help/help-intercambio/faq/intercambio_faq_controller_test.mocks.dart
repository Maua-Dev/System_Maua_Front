// Mocks generated by Mockito 5.1.0 from annotations
// in system_maua_front/test/app/modules/help/help-intercambio/faq/intercambio_faq_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart'
    as _i4;
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/repository/faq_repository_interface.dart'
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

/// A class which mocks [IFaqIntercambioRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIFaqIntercambioRepository extends _i1.Mock
    implements _i2.IFaqIntercambioRepository {
  MockIFaqIntercambioRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.FaqModel>> getFaq() =>
      (super.noSuchMethod(Invocation.method(#getFaq, []),
              returnValue: Future<List<_i4.FaqModel>>.value(<_i4.FaqModel>[]))
          as _i3.Future<List<_i4.FaqModel>>);
}
