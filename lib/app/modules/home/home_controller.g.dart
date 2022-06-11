// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$userAtom = Atom(name: 'HomeControllerBase.user');

  @override
  StudentModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(StudentModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'HomeControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$classesOfDayAtom = Atom(name: 'HomeControllerBase.classesOfDay');

  @override
  List<ClassesModel> get classesOfDay {
    _$classesOfDayAtom.reportRead();
    return super.classesOfDay;
  }

  @override
  set classesOfDay(List<ClassesModel> value) {
    _$classesOfDayAtom.reportWrite(value, super.classesOfDay, () {
      super.classesOfDay = value;
    });
  }

  final _$getUserAsyncAction = AsyncAction('HomeControllerBase.getUser');

  @override
  Future<void> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$getClassAsyncAction = AsyncAction('HomeControllerBase.getClass');

  @override
  Future<void> getClass() {
    return _$getClassAsyncAction.run(() => super.getClass());
  }

  final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase');

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
isLoading: ${isLoading},
classesOfDay: ${classesOfDay}
    ''';
  }
}
