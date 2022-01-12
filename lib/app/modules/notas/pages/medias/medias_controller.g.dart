// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medias_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MediasController on MediasControllerBase, Store {
  Computed<int>? _$mediaMauaComputed;

  @override
  int get mediaMaua =>
      (_$mediaMauaComputed ??= Computed<int>(() => super.mediaMaua,
              name: 'MediasControllerBase.mediaMaua'))
          .value;
  Computed<String>? _$coeficienteRendimentoComputadoComputed;

  @override
  String get coeficienteRendimentoComputado =>
      (_$coeficienteRendimentoComputadoComputed ??= Computed<String>(
              () => super.coeficienteRendimentoComputado,
              name: 'MediasControllerBase.coeficienteRendimentoComputado'))
          .value;

  final _$mediasAtom = Atom(name: 'MediasControllerBase.medias');

  @override
  MediasModel get medias {
    _$mediasAtom.reportRead();
    return super.medias;
  }

  @override
  set medias(MediasModel value) {
    _$mediasAtom.reportWrite(value, super.medias, () {
      super.medias = value;
    });
  }

  final _$coeficienteRendimentoAtom =
      Atom(name: 'MediasControllerBase.coeficienteRendimento');

  @override
  double get coeficienteRendimento {
    _$coeficienteRendimentoAtom.reportRead();
    return super.coeficienteRendimento;
  }

  @override
  set coeficienteRendimento(double value) {
    _$coeficienteRendimentoAtom.reportWrite(value, super.coeficienteRendimento,
        () {
      super.coeficienteRendimento = value;
    });
  }

  final _$filtrosAtom = Atom(name: 'MediasControllerBase.filtros');

  @override
  FiltroMediasModel get filtros {
    _$filtrosAtom.reportRead();
    return super.filtros;
  }

  @override
  set filtros(FiltroMediasModel value) {
    _$filtrosAtom.reportWrite(value, super.filtros, () {
      super.filtros = value;
    });
  }

  final _$getFiltrosAsyncAction =
      AsyncAction('MediasControllerBase.getFiltros');

  @override
  Future<void> getFiltros() {
    return _$getFiltrosAsyncAction.run(() => super.getFiltros());
  }

  final _$getMediasAsyncAction = AsyncAction('MediasControllerBase.getMedias');

  @override
  Future<void> getMedias() {
    return _$getMediasAsyncAction.run(() => super.getMedias());
  }

  final _$getCoeficienteAsyncAction =
      AsyncAction('MediasControllerBase.getCoeficiente');

  @override
  Future<void> getCoeficiente() {
    return _$getCoeficienteAsyncAction.run(() => super.getCoeficiente());
  }

  final _$toggleOpcaoAsyncAction =
      AsyncAction('MediasControllerBase.toggleOpcao');

  @override
  Future<void> toggleOpcao(String label) {
    return _$toggleOpcaoAsyncAction.run(() => super.toggleOpcao(label));
  }

  @override
  String toString() {
    return '''
medias: ${medias},
coeficienteRendimento: ${coeficienteRendimento},
filtros: ${filtros},
mediaMaua: ${mediaMaua},
coeficienteRendimentoComputado: ${coeficienteRendimentoComputado}
    ''';
  }
}
