// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SubjectController on SubjectControllerBase, Store {
  final _$subjectAtom = Atom(name: 'SubjectControllerBase.subject');

  @override
  List<SubjectModel> get subject {
    _$subjectAtom.reportRead();
    return super.subject;
  }

  @override
  set subject(List<SubjectModel> value) {
    _$subjectAtom.reportWrite(value, super.subject, () {
      super.subject = value;
    });
  }

  final _$getSubjectsAsyncAction =
      AsyncAction('SubjectControllerBase.getSubjects');

  @override
  Future<void> getSubjects() {
    return _$getSubjectsAsyncAction.run(() => super.getSubjects());
  }

  @override
  String toString() {
    return '''
subject: ${subject}
    ''';
  }
}
