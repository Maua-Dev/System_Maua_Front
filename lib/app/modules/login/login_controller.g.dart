// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginStoreController, Store {
  final _$listaUsuariosAtom = Atom(name: '_LoginStoreController.listaUsuarios');

  @override
  List<UserLogInModel> get listaUsuarios {
    _$listaUsuariosAtom.reportRead();
    return super.listaUsuarios;
  }

  @override
  set listaUsuarios(List<UserLogInModel> value) {
    _$listaUsuariosAtom.reportWrite(value, super.listaUsuarios, () {
      super.listaUsuarios = value;
    });
  }

  final _$isCheckedAtom = Atom(name: '_LoginStoreController.isChecked');

  @override
  bool? get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool? value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  final _$_LoginStoreControllerActionController =
      ActionController(name: '_LoginStoreController');

  @override
  void setIsChecked(bool? value) {
    final _$actionInfo = _$_LoginStoreControllerActionController.startAction(
        name: '_LoginStoreController.setIsChecked');
    try {
      return super.setIsChecked(value);
    } finally {
      _$_LoginStoreControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaUsuarios: ${listaUsuarios},
isChecked: ${isChecked}
    ''';
  }
}
