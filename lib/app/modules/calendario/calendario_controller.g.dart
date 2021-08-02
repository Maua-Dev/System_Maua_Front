// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendario_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalendarioController on _CalendarioControllerBase, Store {
  final _$avaliacoesAtom = Atom(name: '_CalendarioControllerBase.avaliacoes');

  @override
  List<AvaliacaoModel> get avaliacoes {
    _$avaliacoesAtom.reportRead();
    return super.avaliacoes;
  }

  @override
  set avaliacoes(List<AvaliacaoModel> value) {
    _$avaliacoesAtom.reportWrite(value, super.avaliacoes, () {
      super.avaliacoes = value;
    });
  }

  final _$getAvaliacoesAsyncAction =
      AsyncAction('_CalendarioControllerBase.getAvaliacoes');

  @override
  Future<void> getAvaliacoes() {
    return _$getAvaliacoesAsyncAction.run(() => super.getAvaliacoes());
  }

  @override
  String toString() {
    return '''
avaliacoes: ${avaliacoes}
    ''';
  }
}
