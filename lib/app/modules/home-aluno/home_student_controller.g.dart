// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_student_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStudentController on HomeStudentControllerBase, Store {
  final _$studentAtom = Atom(name: 'HomeStudentControllerBase.student');

  @override
  StudentModel get student {
    _$studentAtom.reportRead();
    return super.student;
  }

  @override
  set student(StudentModel value) {
    _$studentAtom.reportWrite(value, super.student, () {
      super.student = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'HomeStudentControllerBase.isLoading');

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

  final _$classesOfDayAtom =
      Atom(name: 'HomeStudentControllerBase.classesOfDay');

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

  final _$getStudentAsyncAction =
      AsyncAction('HomeStudentControllerBase.getStudent');

  @override
  Future<void> getStudent() {
    return _$getStudentAsyncAction.run(() => super.getStudent());
  }

  final _$getClassAsyncAction =
      AsyncAction('HomeStudentControllerBase.getClass');

  @override
  Future<void> getClass() {
    return _$getClassAsyncAction.run(() => super.getClass());
  }

  final _$HomeStudentControllerBaseActionController =
      ActionController(name: 'HomeStudentControllerBase');

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$HomeStudentControllerBaseActionController
        .startAction(name: 'HomeStudentControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$HomeStudentControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
student: ${student},
isLoading: ${isLoading},
classesOfDay: ${classesOfDay}
    ''';
  }
}
