// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_navigation_bar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BottomNavigationBarController
    on BottomNavigationBarControllerBase, Store {
  final _$isOpenAtom = Atom(name: 'BottomNavigationBarControllerBase.isOpen');

  @override
  bool get isOpen {
    _$isOpenAtom.reportRead();
    return super.isOpen;
  }

  @override
  set isOpen(bool value) {
    _$isOpenAtom.reportWrite(value, super.isOpen, () {
      super.isOpen = value;
    });
  }

  final _$trocaOpenAsyncAction =
      AsyncAction('BottomNavigationBarControllerBase.trocaOpen');

  @override
  Future<void> trocaOpen() {
    return _$trocaOpenAsyncAction.run(() => super.trocaOpen());
  }

  @override
  String toString() {
    return '''
isOpen: ${isOpen}
    ''';
  }
}