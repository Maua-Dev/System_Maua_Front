import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';

class ArquivosModel {
  final ArquivosEnum arquivosEnum;
  final String tituloArquivo;
  final String urlArquivo;

  ArquivosModel(
      {required this.urlArquivo,
      required this.arquivosEnum,
      required this.tituloArquivo});
}
