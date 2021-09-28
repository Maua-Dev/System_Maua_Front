class VideoTutorialModel {
  final String titulo;
  final String? descricao;

  VideoTutorialModel({required this.titulo, this.descricao});

  factory VideoTutorialModel.newInstance() {
    return VideoTutorialModel(titulo: '', descricao: '');
  }
}