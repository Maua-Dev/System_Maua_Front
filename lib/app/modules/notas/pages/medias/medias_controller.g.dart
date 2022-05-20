// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medias_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

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

  late final _$mediasAtom =
      Atom(name: 'MediasControllerBase.medias', context: context);

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

  late final _$getMediasAsyncAction =
      AsyncAction('MediasControllerBase.getMedias', context: context);

  @override
  Future<void> getMedias() {
    return _$getMediasAsyncAction.run(() => super.getMedias());
  }

  @override
  String toString() {
    return '''
medias: ${medias},
mediaMaua: ${mediaMaua},
mediaGeral: ${mediaGeral}
    ''';
  }
}
