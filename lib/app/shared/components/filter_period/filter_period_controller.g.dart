// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_period_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FilterPeriodController on FilterPeriodControllerBase, Store {
  final _$filterValueAtom =
      Atom(name: 'FilterPeriodControllerBase.filterValue');

  @override
  String get filterValue {
    _$filterValueAtom.reportRead();
    return super.filterValue;
  }

  @override
  set filterValue(String value) {
    _$filterValueAtom.reportWrite(value, super.filterValue, () {
      super.filterValue = value;
    });
  }

  final _$changeFilterAsyncAction =
      AsyncAction('FilterPeriodControllerBase.changeFilter');

  @override
  Future<void> changeFilter(String? newValue) {
    return _$changeFilterAsyncAction.run(() => super.changeFilter(newValue));
  }

  @override
  String toString() {
    return '''
filterValue: ${filterValue}
    ''';
  }
}
