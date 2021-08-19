// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medias_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MediasController on MediasControllerBase, Store {
  final _$todasMediasAtom = Atom(name: 'MediasControllerBase.todasMedias');

  @override
  List<MediasModel> get todasMedias {
    _$todasMediasAtom.reportRead();
    return super.todasMedias;
  }

  @override
  set todasMedias(List<MediasModel> value) {
    _$todasMediasAtom.reportWrite(value, super.todasMedias, () {
      super.todasMedias = value;
    });
  }

  final _$getMediasAsyncAction = AsyncAction('MediasControllerBase.getMedias');

  @override
  Future<void> getMedias() {
    return _$getMediasAsyncAction.run(() => super.getMedias());
  }

  @override
  String toString() {
    return '''
todasMedias: ${todasMedias}
    ''';
  }
}
