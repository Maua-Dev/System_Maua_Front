import 'media_model.dart';

class MediasModel {
  final String nomeGraduacao;
  final int ano;
  final List<MediaModel> medias;

  MediasModel({
    required this.nomeGraduacao,
    required this.ano,
    required this.medias,
  });

  factory MediasModel.newInstance() {
    return MediasModel(
      nomeGraduacao: '',
      ano: 2021,
      medias: [],
    );
  }
}
