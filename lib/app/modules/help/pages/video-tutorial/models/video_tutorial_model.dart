class VideoTutorialModel {
  final String titulo;
  final String? descricao;
  final String url;

  VideoTutorialModel({required this.titulo, this.descricao, required this.url});

  factory VideoTutorialModel.newInstance() {
    return VideoTutorialModel(titulo: '', descricao: '', url: '');
  }
}
