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

  final _$filtrosAbertosAtom =
      Atom(name: 'MediasControllerBase.filtrosAbertos');

  @override
  bool get filtrosAbertos {
    _$filtrosAbertosAtom.reportRead();
    return super.filtrosAbertos;
  }

  @override
  set filtrosAbertos(bool value) {
    _$filtrosAbertosAtom.reportWrite(value, super.filtrosAbertos, () {
      super.filtrosAbertos = value;
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

  final _$MediasControllerBaseActionController =
      ActionController(name: 'MediasControllerBase');

  @override
  void abreFiltros() {
    final _$actionInfo = _$MediasControllerBaseActionController.startAction(
        name: 'MediasControllerBase.abreFiltros');
    try {
      return super.abreFiltros();
    } finally {
      _$MediasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
medias: ${medias},
filtros: ${filtros},
filtrosAbertos: ${filtrosAbertos},
mediaMaua: ${mediaMaua}
    ''';
  }
}
