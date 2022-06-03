// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservas_quadras_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReservasQuadrasController on _ReservasQuadrasControllerBase, Store {
  late final _$listaQuadrasAtom = Atom(
      name: '_ReservasQuadrasControllerBase.listaQuadras', context: context);

  @override
  List<ReservasQuadraModel> get listaQuadras {
    _$listaQuadrasAtom.reportRead();
    return super.listaQuadras;
  }

  @override
  set listaQuadras(List<ReservasQuadraModel> value) {
    _$listaQuadrasAtom.reportWrite(value, super.listaQuadras, () {
      super.listaQuadras = value;
    });
  }

  late final _$getQuadrasAsyncAction = AsyncAction(
      '_ReservasQuadrasControllerBase.getQuadras',
      context: context);

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
