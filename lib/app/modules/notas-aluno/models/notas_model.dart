import 'package:system_maua_front/app/modules/notas-aluno/enumerates/avaliacao_enum.dart';

class NotasModel {
  final AvaliacaoEnum avaliacao; //p1, p2, p3, p4, t1 t2 t3
  final double? value; // nota

  NotasModel({required this.avaliacao, this.value});
}
