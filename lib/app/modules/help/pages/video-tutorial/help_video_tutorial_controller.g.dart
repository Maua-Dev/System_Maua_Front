// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_video_tutorial_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HelpVideoTutorialController on _HelpVideoTutorialControllerBase, Store {
  final _$listaVideosAtom =
      Atom(name: '_HelpVideoTutorialControllerBase.listaVideos');

  @override
  List<VideoTutorialModel> get listaVideos {
    _$listaVideosAtom.reportRead();
    return super.listaVideos;
  }

  @override
  set listaVideos(List<VideoTutorialModel> value) {
    _$listaVideosAtom.reportWrite(value, super.listaVideos, () {
      super.listaVideos = value;
    });
  }

  final _$getVideosAsyncAction =
      AsyncAction('_HelpVideoTutorialControllerBase.getVideos');

  @override
  Future<void> getVideos() {
    return _$getVideosAsyncAction.run(() => super.getVideos());
  }

  @override
  String toString() {
    return '''
listaVideos: ${listaVideos}
    ''';
  }
}
