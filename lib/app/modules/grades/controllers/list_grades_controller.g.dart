// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_grades_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListGradesController on ListGradesControllerBase, Store {
  Computed<int>? _$avgMauaComputed;

  @override
  int get avgMaua => (_$avgMauaComputed ??= Computed<int>(() => super.avgMaua,
          name: 'ListGradesControllerBase.avgMaua'))
      .value;

  final _$avgsAtom = Atom(name: 'ListGradesControllerBase.avgs');

  @override
  AverageModel get avgs {
    _$avgsAtom.reportRead();
    return super.avgs;
  }

  @override
  set avgs(AverageModel value) {
    _$avgsAtom.reportWrite(value, super.avgs, () {
      super.avgs = value;
    });
  }

  final _$getAverageAsyncAction =
      AsyncAction('ListGradesControllerBase.getAverage');

  @override
  Future<void> getAverage() {
    return _$getAverageAsyncAction.run(() => super.getAverage());
  }

  @override
  String toString() {
    return '''
avgs: ${avgs},
avgMaua: ${avgMaua}
    ''';
  }
}
