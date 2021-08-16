// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ActivitiesController on ActivitiesControllerBase, Store {
  Computed<int>? _$activitiesDeliveredComputed;

  @override
  int get activitiesDelivered => (_$activitiesDeliveredComputed ??=
          Computed<int>(() => super.activitiesDelivered,
              name: 'ActivitiesControllerBase.activitiesDelivered'))
      .value;
  Computed<double>? _$activitiesDeliveredPercentualComputed;

  @override
  double get activitiesDeliveredPercentual =>
      (_$activitiesDeliveredPercentualComputed ??= Computed<double>(
              () => super.activitiesDeliveredPercentual,
              name: 'ActivitiesControllerBase.activitiesDeliveredPercentual'))
          .value;

  final _$activitiesAtom = Atom(name: 'ActivitiesControllerBase.activities');

  @override
  List<ActivityModel> get activities {
    _$activitiesAtom.reportRead();
    return super.activities;
  }

  @override
  set activities(List<ActivityModel> value) {
    _$activitiesAtom.reportWrite(value, super.activities, () {
      super.activities = value;
    });
  }

  final _$getActivitiesAsyncAction =
      AsyncAction('ActivitiesControllerBase.getActivities');

  @override
  Future<void> getActivities() {
    return _$getActivitiesAsyncAction.run(() => super.getActivities());
  }

  @override
  String toString() {
    return '''
activities: ${activities},
activitiesDelivered: ${activitiesDelivered},
activitiesDeliveredPercentual: ${activitiesDeliveredPercentual}
    ''';
  }
}
