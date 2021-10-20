enum FablabEnum { CORTELASER, CAMARAPINTURA, CORTELIXA, IMPRESSORA3D }

extension FablabEnumExtension on FablabEnum {
  String get titulo {
    switch (this) {
      case FablabEnum.CORTELASER:
        return 'Corte a laser';
      case FablabEnum.CAMARAPINTURA:
        return 'Camara de pintura';
      case FablabEnum.CORTELIXA:
        return 'Equipamento de corte a lixa';
      case FablabEnum.IMPRESSORA3D:
        return 'Impressora 3D';
    }
  }
}
