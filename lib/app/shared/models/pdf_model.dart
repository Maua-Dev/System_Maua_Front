import 'package:system_maua_front/app/shared/enumerates/pdf_enum.dart';

class ArquivosModel {
  final String url;
  final ArquivosEnum arquivosEnum;
  final String tituloArquivo;

  ArquivosModel(
      {required this.tituloArquivo,
      required this.url,
      required this.arquivosEnum});
}
