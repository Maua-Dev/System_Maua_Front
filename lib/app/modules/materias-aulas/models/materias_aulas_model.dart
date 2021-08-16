import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class MateriasAulasModel {
  final int idPagina;
  final String tituloPagina;
  final String? resumoPagina;
  final List<ArquivosModel>? listaArquivos;

  MateriasAulasModel(
      {required this.idPagina,
      required this.tituloPagina,
      this.resumoPagina,
      this.listaArquivos});

  factory MateriasAulasModel.newInstance() {
    return MateriasAulasModel(
        idPagina: 0, tituloPagina: '', listaArquivos: [], resumoPagina: '');
  }
}
