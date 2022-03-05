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
  Computed<String>? _$mediaGeralComputed;

  @override
  String get mediaGeral =>
      (_$mediaGeralComputed ??= Computed<String>(() => super.mediaGeral,
              name: 'MediasControllerBase.mediaGeral'))
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
filtros: ${filtros},
mediaMaua: ${mediaMaua},
mediaGeral: ${mediaGeral}
    ''';
  }
}
