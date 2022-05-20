// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservas_fablab_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReservasFablabController on _ReservasFablabControllerBase, Store {
  late final _$listaFablabAtom =
      Atom(name: '_ReservasFablabControllerBase.listaFablab', context: context);

  @override
  List<ReservasFablabModel> get listaFablab {
    _$listaFablabAtom.reportRead();
    return super.listaFablab;
  }

  @override
  set listaFablab(List<ReservasFablabModel> value) {
    _$listaFablabAtom.reportWrite(value, super.listaFablab, () {
      super.listaFablab = value;
    });
  }

  late final _$getFablabAsyncAction =
      AsyncAction('_ReservasFablabControllerBase.getFablab', context: context);

  @override
  Future<void> getFablab() {
    return _$getFablabAsyncAction.run(() => super.getFablab());
  }

  @override
  String toString() {
    return '''
listaFablab: ${listaFablab}
    ''';
  }
}
