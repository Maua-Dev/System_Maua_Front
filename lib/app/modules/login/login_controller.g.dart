// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginController, Store {
  final _$passwordVisibilityAtom =
      Atom(name: '_LoginController.passwordVisibility');

  @override
  bool get passwordVisibility {
    _$passwordVisibilityAtom.reportRead();
    return super.passwordVisibility;
  }

  @override
  set passwordVisibility(bool value) {
    _$passwordVisibilityAtom.reportWrite(value, super.passwordVisibility, () {
      super.passwordVisibility = value;
    });
  }

  final _$errosAtom = Atom(name: '_LoginController.erros');

  @override
  String get erros {
    _$errosAtom.reportRead();
    return super.erros;
  }

  @override
  set erros(String value) {
    _$errosAtom.reportWrite(value, super.erros, () {
      super.erros = value;
    });
  }

  final _$isCheckedAtom = Atom(name: '_LoginController.isChecked');

  @override
  bool get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  final _$emailAtom = Atom(name: '_LoginController.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginController.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_LoginController.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginControllerActionController =
      ActionController(name: '_LoginController');

  @override
  void setIsChecked(bool? value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setIsChecked');
    try {
      return super.setIsChecked(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordVisibility() {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.changePasswordVisibility');
    try {
      return super.changePasswordVisibility();
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passwordVisibility: ${passwordVisibility},
erros: ${erros},
isChecked: ${isChecked},
email: ${email},
password: ${password}
    ''';
  }
}
