class FiltroMediasModel {
  final List<String> anos;
  final bool primeiroSem;
  final bool segundoSem;
  final bool provas;
  final bool trabalhos;

  FiltroMediasModel({
    required this.anos,
    required this.primeiroSem,
    required this.segundoSem,
    required this.provas,
    required this.trabalhos,
  });

  factory FiltroMediasModel.newInstance() {
    return FiltroMediasModel(
      anos: ['2020', '2021', '2022'],
      primeiroSem: true,
      provas: true,
      segundoSem: true,
      trabalhos: true,
    );
  }
}
