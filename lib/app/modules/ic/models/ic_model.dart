import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';

class IcModel {
  final String tituloIc;
  final ProfessoresModel professoresIc;
  final String descricao;
  final String linhaPesquisa;
  final String? projetoPesquisa;
  final List<ArquivosEnum>? listaArquivos;

  IcModel(
      {required this.tituloIc,
      required this.professoresIc,
      required this.descricao,
      required this.linhaPesquisa,
      this.projetoPesquisa,
      this.listaArquivos});
}
