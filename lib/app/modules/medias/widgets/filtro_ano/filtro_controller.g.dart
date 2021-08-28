// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FiltroAnoController on FiltroAnoControllerBase, Store {
  final _$anoAtom = Atom(name: 'FiltroAnoControllerBase.ano');

  @override
  String get ano {
    _$anoAtom.reportRead();
    return super.ano;
  }

  @override
  set ano(String value) {
    _$anoAtom.reportWrite(value, super.ano, () {
      super.ano = value;
    });
  }

  final _$changeFilterAsyncAction =
      AsyncAction('FiltroAnoControllerBase.changeFilter');

  @override
  Future<void> changeFilter(String? newValue) {
    return _$changeFilterAsyncAction.run(() => super.changeFilter(newValue));
  }

  @override
  String toString() {
    return '''
ano: ${ano}
    ''';
  }
}
