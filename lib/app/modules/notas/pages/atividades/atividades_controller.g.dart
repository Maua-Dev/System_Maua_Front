// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atividades_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AtividadesController on AtividadesControllerBase, Store {
  Computed<int>? _$mediaMauaComputed;

  @override
  int get mediaMaua =>
      (_$mediaMauaComputed ??= Computed<int>(() => super.mediaMaua,
              name: 'AtividadesControllerBase.mediaMaua'))
          .value;

  final _$atividadesAtom = Atom(name: 'AtividadesControllerBase.atividades');

  @override
  List<AtividadeModel> get atividades {
    _$atividadesAtom.reportRead();
    return super.atividades;
  }

  @override
  set atividades(List<AtividadeModel> value) {
    _$atividadesAtom.reportWrite(value, super.atividades, () {
      super.atividades = value;
    });
  }

  final _$getAtividadesAsyncAction =
      AsyncAction('AtividadesControllerBase.getAtividades');

  @override
  Future<void> getAtividades() {
    return _$getAtividadesAsyncAction.run(() => super.getAtividades());
  }

  @override
  String toString() {
    return '''
atividades: ${atividades},
mediaMaua: ${mediaMaua}
    ''';
  }
}
