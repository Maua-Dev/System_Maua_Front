import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/arquivos_model.dart';

class MateriasAulasModel extends MateriasModel {
  final int idPagina;
  final String tituloPagina;
  final String? resumoPagina;
  final List<ArquivosModel>? listaArquivos;

  MateriasAulasModel({
    required this.idPagina,
    required this.tituloPagina,
    this.resumoPagina,
    this.listaArquivos,
    required String codigoMateria,
    TipoMateriaEnum? nomeMateria,
    String? foto,
    List<ProfessoresModel>? professores,
  }) : super(
            nomeMateria: nomeMateria,
            codigoMateria: codigoMateria,
            foto: foto,
            professores: professores);

  factory MateriasAulasModel.newInstance() {
    return MateriasAulasModel(
        codigoMateria: '',
        foto: '',
        nomeMateria: null,
        professores: null,
        idPagina: 0,
        tituloPagina: '',
        listaArquivos: [],
        resumoPagina: '');
  }
}
