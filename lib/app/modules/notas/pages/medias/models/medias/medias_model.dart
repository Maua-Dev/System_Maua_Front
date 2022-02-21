import 'media_model.dart';

class MediasModel {
  final String nomeGraduacao;
  final int ano;
  final List<MediaModel> medias;
  final double mediaGeral;

  MediasModel({
    required this.nomeGraduacao,
    required this.ano,
    required this.medias,
    required this.mediaGeral,
  });

  factory MediasModel.fromJson(Map data) {
    return MediasModel(
      nomeGraduacao: data['nomeGraduacao'] as String,
      mediaGeral: data['mediaGeral'] as double,
      ano: data['ano'] as int,
      medias: (data['medias'] as List)
          .map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  factory MediasModel.newInstance() {
    return MediasModel(
      nomeGraduacao: '',
      mediaGeral: 0.0,
      ano: 2021,
      medias: [],
    );
  }
}
