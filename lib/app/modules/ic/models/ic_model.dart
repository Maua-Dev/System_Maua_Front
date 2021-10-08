import 'package:system_maua_front/app/shared/enumerates/tronco_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';

class IcModel {
  final String tituloIc;
  final List<TroncoEnum> tronco;
  final List<ProfessoresModel> professoresIc;
  final String descricao;
  final String linhaPesquisa;
  final String? projetoPesquisa;
  final List<ArquivosModel>? listaArquivos;

  IcModel(
      {required this.tronco,
      required this.tituloIc,
      required this.professoresIc,
      required this.descricao,
      required this.linhaPesquisa,
      this.projetoPesquisa,
      this.listaArquivos});
}
