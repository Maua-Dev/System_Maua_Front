// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservas_quadras_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReservasQuadrasController on _ReservasQuadrasControllerBase, Store {
  final _$listaQuadrasAtom =
      Atom(name: '_ReservasQuadrasControllerBase.listaQuadras');

  @override
  List<ReservasQuadrasModel> get listaQuadras {
    _$listaQuadrasAtom.reportRead();
    return super.listaQuadras;
  }

  @override
  set listaQuadras(List<ReservasQuadrasModel> value) {
    _$listaQuadrasAtom.reportWrite(value, super.listaQuadras, () {
      super.listaQuadras = value;
    });
  }

  final _$getQuadrasAsyncAction =
      AsyncAction('_ReservasQuadrasControllerBase.getQuadras');

  @override
  Future<void> getQuadras() {
    return _$getQuadrasAsyncAction.run(() => super.getQuadras());
  }

  @override
  String toString() {
    return '''
listaQuadras: ${listaQuadras}
    ''';
  }
}
