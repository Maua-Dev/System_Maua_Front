import 'package:system_maua_front/app/modules/reservas/pages/reservas-quadras/enumerates/esportes_enum.dart';

class ReservasQuadraModel {
  final EsportesEnum tipoEsporte;
  final String dataReserva;
  final String horarioReserva;

  ReservasQuadraModel(
      {required this.dataReserva,
      required this.horarioReserva,
      required this.tipoEsporte});
}
