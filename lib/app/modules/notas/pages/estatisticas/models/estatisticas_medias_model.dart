class EstatisticasMediasModel {
  final double? mediaParcial;
  final double? mediaFinal;
  final double? mediaTronco;

  EstatisticasMediasModel({
    this.mediaParcial,
    this.mediaFinal,
    this.mediaTronco,
  });

  factory EstatisticasMediasModel.newInstance() {
    return EstatisticasMediasModel(
      mediaFinal: null,
      mediaParcial: null,
      mediaTronco: null,
    );
  }
}
