// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estatisticas_notas_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EstatisticasController on EstatisticasControllerBase, Store {
  Computed<int>? _$mediaMauaComputed;

  @override
  int get mediaMaua =>
      (_$mediaMauaComputed ??= Computed<int>(() => super.mediaMaua,
              name: 'EstatisticasControllerBase.mediaMaua'))
          .value;
  Computed<String>? _$mediaParcialComputed;

  @override
  String get mediaParcial =>
      (_$mediaParcialComputed ??= Computed<String>(() => super.mediaParcial,
              name: 'EstatisticasControllerBase.mediaParcial'))
          .value;
  Computed<String>? _$mediaFinalComputed;

  @override
  String get mediaFinal =>
      (_$mediaFinalComputed ??= Computed<String>(() => super.mediaFinal,
              name: 'EstatisticasControllerBase.mediaFinal'))
          .value;
  Computed<String>? _$mediaTroncoComputed;

  @override
  String get mediaTronco =>
      (_$mediaTroncoComputed ??= Computed<String>(() => super.mediaTronco,
              name: 'EstatisticasControllerBase.mediaTronco'))
          .value;
  Computed<String>? _$mediaFinalArredondadaComputed;

  @override
  String get mediaFinalArredondada => (_$mediaFinalArredondadaComputed ??=
          Computed<String>(() => super.mediaFinalArredondada,
              name: 'EstatisticasControllerBase.mediaFinalArredondada'))
      .value;

  final _$dadosGraficoDeBarrasAtom =
      Atom(name: 'EstatisticasControllerBase.dadosGraficoDeBarras');

  @override
  DadosGraficoDeBarrasModel get dadosGraficoDeBarras {
    _$dadosGraficoDeBarrasAtom.reportRead();
    return super.dadosGraficoDeBarras;
  }

  @override
  set dadosGraficoDeBarras(DadosGraficoDeBarrasModel value) {
    _$dadosGraficoDeBarrasAtom.reportWrite(value, super.dadosGraficoDeBarras,
        () {
      super.dadosGraficoDeBarras = value;
    });
  }

  final _$mediasAtom = Atom(name: 'EstatisticasControllerBase.medias');

  @override
  EstatisticasMediasModel get medias {
    _$mediasAtom.reportRead();
    return super.medias;
  }

  @override
  set medias(EstatisticasMediasModel value) {
    _$mediasAtom.reportWrite(value, super.medias, () {
      super.medias = value;
    });
  }

  final _$getDadosGraficoDeBarrasAsyncAction =
      AsyncAction('EstatisticasControllerBase.getDadosGraficoDeBarras');

  @override
  Future<void> getDadosGraficoDeBarras() {
    return _$getDadosGraficoDeBarrasAsyncAction
        .run(() => super.getDadosGraficoDeBarras());
  }

  final _$getEstatisticasMediasAsyncAction =
      AsyncAction('EstatisticasControllerBase.getEstatisticasMedias');

  @override
  Future<void> getEstatisticasMedias() {
    return _$getEstatisticasMediasAsyncAction
        .run(() => super.getEstatisticasMedias());
  }

  @override
  String toString() {
    return '''
dadosGraficoDeBarras: ${dadosGraficoDeBarras},
medias: ${medias},
mediaMaua: ${mediaMaua},
mediaParcial: ${mediaParcial},
mediaFinal: ${mediaFinal},
mediaTronco: ${mediaTronco},
mediaFinalArredondada: ${mediaFinalArredondada}
    ''';
  }
}
