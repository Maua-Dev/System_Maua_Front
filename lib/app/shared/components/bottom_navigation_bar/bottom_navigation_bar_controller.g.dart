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

  final _$currentIndexAtom =
      Atom(name: 'BottomNavigationBarControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$alternatePageAsyncAction =
      AsyncAction('BottomNavigationBarControllerBase.alternatePage');

  @override
  Future<void> alternatePage(int index) {
    return _$alternatePageAsyncAction.run(() => super.alternatePage(index));
  }

  final _$changeOpenAsyncAction =
      AsyncAction('BottomNavigationBarControllerBase.changeOpen');

  @override
  Future<void> changeOpen() {
    return _$changeOpenAsyncAction.run(() => super.changeOpen());
  }

  @override
  String toString() {
    return '''
isOpen: ${isOpen},
currentIndex: ${currentIndex}
    ''';
  }
}
