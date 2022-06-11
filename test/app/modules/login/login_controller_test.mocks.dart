// Mocks generated by Mockito 5.1.0 from annotations
// in system_maua_front/test/app/modules/login/login_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;
import 'dart:ui' as _i9;

import 'package:flutter/material.dart' as _i8;
import 'package:flutter_modular/src/core/interfaces/modular_navigator_interface.dart'
    as _i7;
import 'package:mockito/mockito.dart' as _i1;
import 'package:system_maua_front/app/modules/auth/auth_controller.dart' as _i5;
import 'package:system_maua_front/app/modules/auth/repositories/auth_repository_interface.dart'
    as _i2;
import 'package:system_maua_front/app/modules/auth/repositories/secure_storage_interface.dart'
    as _i3;
import 'package:system_maua_front/app/shared/services/firebase/firebase_analytics_service.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeIAuthRepository_0 extends _i1.Fake implements _i2.IAuthRepository {}

class _FakeISecureStorage_1 extends _i1.Fake implements _i3.ISecureStorage {}

class _FakeFirebaseAnalyticsService_2 extends _i1.Fake
    implements _i4.FirebaseAnalyticsService {}

/// A class which mocks [AuthController].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthController extends _i1.Mock implements _i5.AuthController {
  MockAuthController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.IAuthRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeIAuthRepository_0()) as _i2.IAuthRepository);
  @override
  _i3.ISecureStorage get storage =>
      (super.noSuchMethod(Invocation.getter(#storage),
          returnValue: _FakeISecureStorage_1()) as _i3.ISecureStorage);
  @override
  _i4.FirebaseAnalyticsService get analytics =>
      (super.noSuchMethod(Invocation.getter(#analytics),
              returnValue: _FakeFirebaseAnalyticsService_2())
          as _i4.FirebaseAnalyticsService);
  @override
  bool get isLogged =>
      (super.noSuchMethod(Invocation.getter(#isLogged), returnValue: false)
          as bool);
  @override
  _i6.Future<void> loginWithEmail(
          String? email, String? password, bool? persistence) =>
      (super.noSuchMethod(
          Invocation.method(#loginWithEmail, [email, password, persistence]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> refreshToken() =>
      (super.noSuchMethod(Invocation.method(#refreshToken, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> logout() =>
      (super.noSuchMethod(Invocation.method(#logout, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
}

/// A class which mocks [IModularNavigator].
///
/// See the documentation for Mockito's code generation for more information.
class MockIModularNavigator extends _i1.Mock implements _i7.IModularNavigator {
  MockIModularNavigator() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  String get localPath =>
      (super.noSuchMethod(Invocation.getter(#localPath), returnValue: '')
          as String);
  @override
  String get modulePath =>
      (super.noSuchMethod(Invocation.getter(#modulePath), returnValue: '')
          as String);
  @override
  _i6.Future<T?> push<T extends Object?>(_i8.Route<T>? route) =>
      (super.noSuchMethod(Invocation.method(#push, [route]),
          returnValue: Future<T?>.value()) as _i6.Future<T?>);
  @override
  _i6.Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
          String? routeName,
          {TO? result,
          Object? arguments,
          bool? forRoot = false}) =>
      (super.noSuchMethod(
          Invocation.method(#popAndPushNamed, [routeName],
              {#result: result, #arguments: arguments, #forRoot: forRoot}),
          returnValue: Future<T?>.value()) as _i6.Future<T?>);
  @override
  _i6.Future<T?> pushNamed<T extends Object?>(String? routeName,
          {Object? arguments, bool? forRoot = false}) =>
      (super.noSuchMethod(
          Invocation.method(#pushNamed, [routeName],
              {#arguments: arguments, #forRoot: forRoot}),
          returnValue: Future<T?>.value()) as _i6.Future<T?>);
  @override
  _i6.Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
          String? newRouteName, bool Function(_i8.Route<dynamic>)? predicate,
          {Object? arguments, bool? forRoot = false}) =>
      (super.noSuchMethod(
          Invocation.method(#pushNamedAndRemoveUntil, [newRouteName, predicate],
              {#arguments: arguments, #forRoot: forRoot}),
          returnValue: Future<T?>.value()) as _i6.Future<T?>);
  @override
  _i6.Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
          String? routeName,
          {TO? result,
          Object? arguments,
          bool? forRoot = false}) =>
      (super.noSuchMethod(
          Invocation.method(#pushReplacementNamed, [routeName],
              {#result: result, #arguments: arguments, #forRoot: forRoot}),
          returnValue: Future<T?>.value()) as _i6.Future<T?>);
  @override
  void pop<T extends Object?>([T? result]) =>
      super.noSuchMethod(Invocation.method(#pop, [result]),
          returnValueForMissingStub: null);
  @override
  bool canPop() =>
      (super.noSuchMethod(Invocation.method(#canPop, []), returnValue: false)
          as bool);
  @override
  _i6.Future<bool> maybePop<T extends Object?>([T? result]) =>
      (super.noSuchMethod(Invocation.method(#maybePop, [result]),
          returnValue: Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  void popUntil(bool Function(_i8.Route<dynamic>)? predicate) =>
      super.noSuchMethod(Invocation.method(#popUntil, [predicate]),
          returnValueForMissingStub: null);
  @override
  void navigate(String? path, {dynamic arguments, bool? replaceAll = false}) =>
      super.noSuchMethod(
          Invocation.method(#navigate, [path],
              {#arguments: arguments, #replaceAll: replaceAll}),
          returnValueForMissingStub: null);
  @override
  void addListener(_i9.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i9.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
}
