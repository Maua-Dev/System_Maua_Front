import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

class AulaModel {
  final TipoMateriaEnum? tipoMateriaEnum;
  final String local;
  final String horario;
  final String duracao;

  AulaModel(
      {required this.tipoMateriaEnum,
      required this.local,
      required this.horario,
      required this.duracao});

  factory AulaModel.newInstance() {
    return AulaModel(
        duracao: '', horario: '', tipoMateriaEnum: null, local: '');
  }
}
