// Mocks generated by Mockito 5.0.16 from annotations
// in system_maua_front/test/app/modules/notas/medias/medias_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/notas/pages/medias/models/filtros/filters_model.dart'
    as _i2;
import 'package:system_maua_front/app/modules/notas/pages/medias/models/medias/medias_model.dart'
    as _i3;
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/filtros/filtros_medias_repository_interface.dart'
    as _i4;
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository_interface.dart'
    as _i6;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeFiltroMediasModel_0 extends _i1.Fake
    implements _i2.FiltroMediasModel {}

class _FakeMediasModel_1 extends _i1.Fake implements _i3.MediasModel {}

/// A class which mocks [IFiltroMediasRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIFiltroMediasRepository extends _i1.Mock
    implements _i4.IFiltroMediasRepository {
  MockIFiltroMediasRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.FiltroMediasModel> getFiltros() => (super.noSuchMethod(
          Invocation.method(#getFiltros, []),
          returnValue:
              Future<_i2.FiltroMediasModel>.value(_FakeFiltroMediasModel_0()))
      as _i5.Future<_i2.FiltroMediasModel>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [IMediasRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIMediasRepository extends _i1.Mock implements _i6.IMediasRepository {
  MockIMediasRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.MediasModel> getMedias() =>
      (super.noSuchMethod(Invocation.method(#getMedias, []),
              returnValue: Future<_i3.MediasModel>.value(_FakeMediasModel_1()))
          as _i5.Future<_i3.MediasModel>);
  @override
  String toString() => super.toString();
}
