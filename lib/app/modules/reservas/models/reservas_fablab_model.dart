import 'package:system_maua_front/app/modules/reservas/pages/reservas_fablab/enumerates/fablab_enum.dart';

class ReservasFablabModel {
  final FablabEnum tipoFablab;
  final String dataReserva;
  final String horarioReserva;

  ReservasFablabModel(
      {required this.dataReserva,
      required this.horarioReserva,
      required this.tipoFablab});
}