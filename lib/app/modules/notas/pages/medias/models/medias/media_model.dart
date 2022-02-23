class MediaModel {
  final String materia;
  final double? media;

  MediaModel({
    required this.materia,
    this.media,
  });

  String mediaComputada(String value) {
    return '${value.replaceAll('.', ',')}';
  }

  String get getMediaComputada =>
      media == null ? '-' : mediaComputada(media!.toStringAsFixed(1));

  factory MediaModel.fromJson(Map<String, dynamic> json) {
    return MediaModel(
      materia: json['materia'] as String,
      media: json['media'] as double?,
    );
  }
}
